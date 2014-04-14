class Product < ActiveRecord::Base
	validates :description, :name, :presence => true
	validates :price_in_cents, :numericality => {:only_integer => true}
end

	#when you create a product, both description and name have to be present.
	#When you create a product, the price_in_cents must be an integer.