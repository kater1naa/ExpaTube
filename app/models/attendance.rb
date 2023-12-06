class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :event_id, uniqueness: { scope: :user_id, message: "You already participate to this event" }
end
