class Shop < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :city
  validates :city, presence: true
end
