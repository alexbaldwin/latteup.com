class Shop < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :city
  belongs_to :writer, :class_name => "Curator"
  belongs_to :photographer, :class_name => "Curator"
  validates :city, presence: true
end
