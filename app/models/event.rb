class Event < ApplicationRecord
	belongs_to :host, class_name: 'User'
  has_many :attendees, foreign_key: :attended_event_id
  has_many :guests, through: :attendees, source: :guest
  default_scope -> { order(created_at: :desc) }

  validates :title, presence: true
  validates :host_id, presence: true
  validates :location, presence: true
  validates :date, presence: true

  scope :past, (-> { where('date < ?', Date.today) })
  scope :upcoming, (-> { where('date >= ?', Date.today) })
end
