class Inventory < ActiveRecord::Base
  belongs_to :product
  belongs_to :warehouse
  has_many :inventories 
  has_many :products, through: :inventories
  validates :product, presence: true 
   validates :warehouse, presence: true 
   validates :stock, presence: true, 
   numericality: { greater_than_or_equal_to: 0,
 lower_than_or_equal_to: 100 }
end
