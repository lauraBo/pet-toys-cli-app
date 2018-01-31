
class PetToys::Product 

	attr_accessor :title, :price, :description 

	def self.get_products 

		toys = []
		toys  << self.scrape_work_to_eat_toy
		toys << self.scrape_soft_toy  

		toys 

	end 


	 def self.scrape_work_to_eat_toy 
	 	doc = Nokogiri::HTML(open("https://storeforthedogs.com/collections/work-to-eat-toys/products/orbee-tuff-link"))
	 	product = self.new 
	 	product.title = doc.search("div.product-title h1").text.strip 
	 	product.price = doc.search("span#ProductPrice-product-template").text.strip
	 	product.description = doc.search("div.description.rte span").text.strip
	 	product 
	 end 

    def self.scrape_soft_toy
    	doc = Nokogiri::HTML(open("https://storeforthedogs.com/collections/toys/products/lamb-chop-plush-toy"))
 		product = self.new
 		product.title = doc.search("div.product-title h1").text.strip 
 		product.price = doc.search("span#ProductPrice-product-template").text.strip
 		product.description = ("div.description.rte p").text.strip 
 		product 
end 