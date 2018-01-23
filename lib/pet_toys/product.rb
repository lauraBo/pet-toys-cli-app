
class PetToys::Product 

	def self.get_products 
		self.scrape_products

	end 


	 def self.scrape_products
	 	doc = Nokogiri::HTML(open("https://storeforthedogs.com/collections/work-to-eat-toys"))
	 	puts doc 
	 end 

    

end 