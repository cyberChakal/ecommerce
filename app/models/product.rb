class Product < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :name,:pricing #,:user
  validates :pricing, numericality: { greater_than: 0}

  has_attached_file :avatar, styles: { medium: "300x300", thumb:"100x100 "}, default_url: "missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
