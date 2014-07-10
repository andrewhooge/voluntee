class Position < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true

  belongs_to :user
  belongs_to :admin_user
  has_many :open_positions
end
