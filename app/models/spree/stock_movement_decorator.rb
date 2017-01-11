Spree::StockMovement.class_eval do
	belongs_to :product
	belongs_to :store_location

	validates_uniqueness_of :product_id, :scope => :store_location_id

	def readonly?
		false
	end

end