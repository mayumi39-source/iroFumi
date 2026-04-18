class ColorEntry < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :color, presence: true
  validates :date, uniqueness: { scope: :user_id, message: "はすでに記録されています" }
end