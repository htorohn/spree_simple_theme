class Spree::StoreController
	before_action :load_taxonomies
	before_action :latest

	def load_taxonomies
		@taxonomies = Spree::Taxonomy.includes(root: :children)
	end
	
	def latest
	    @latest_products = Spree::Product.available.order('available_on DESC').limit(10);
	    #render "index"
	end

end