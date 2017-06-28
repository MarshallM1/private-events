class Attendee < ApplicationRecord
	belongs_to :attended_event, class_name: 'Event'
  belongs_to :guest, class_name: 'User'
	validates :attended_event_id, presence: true
	validates :guest_id, presence: true
end
