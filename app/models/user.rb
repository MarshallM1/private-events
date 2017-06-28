class User < ApplicationRecord
	has_many :events, foreign_key: 'host_id', class_name: 'Event'
  has_many :attendees, foreign_key: :guest_id
  has_many :attended_events, through: :attendees, source: :attended_event
  validates :name, presence: true
  validates :email, presence: true

  def upcoming_events
    attended_events.where('date >= ?', Date.today)
  end

  def past_events
    attended_events.where('date < ?', Date.today)
  end
end
