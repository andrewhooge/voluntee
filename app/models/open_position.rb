class OpenPosition < ActiveRecord::Base
  validates :position, presence: true

  belongs_to :positions

end
