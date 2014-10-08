class Shop < ActiveRecord::Base
  belongs_to :city
  validates :city, presence: true
end
