class Item < ActiveRecord::Base
  has_many :item_categories, dependent: :destroy
  has_many :categories, through: :item_categories
  has_attached_file :image, styles: { large: "750x750>", medium: "300x300#", thumb: "150x150#", text: {quality: :better} }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :name, presence: true
  validates :price, presence: true
  validates :image, attachment_presence: true

  def to_param
    "#{id}-#{name.parameterize}"
  end
end
