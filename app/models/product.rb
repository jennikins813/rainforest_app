class Product < ActiveRecord::Base
	validates :description, :name, :presence => true
	validates :price_in_cents, :numericality => {:only_integer => true}

	#when you create a product, both description and name have to be present.
	#When you create a product, the price_in_cents must be an integer.

	def formatted_price
		price_in_dollars = price_in_cents.to_f / 100
		sprintf("%.2f", price_in_dollars)
	end
	#writing this method in the product model converts the price_in_cents to a string that is a price in dollars.

end
