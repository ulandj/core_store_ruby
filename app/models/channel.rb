class Channel < ApplicationRecord
  belongs_to :user

  validates :token, uniqueness: true, presence: true

  scope :active, -> { where(active: true) }
end
