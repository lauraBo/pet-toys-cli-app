class PetToys::CLI

	def call
		list
		menu
		exit 
	end 

	
	def list
		@product = PetToys::Product.get_products
		puts "Product: #{@product.title} Price: #{@product.price}"

	end


	def menu
		puts "Would you like to see more information? Type Yes to see more, or Exit to exit"
		input = nil 
		
		while input != "exit"
			input = gets.strip.downcase
			if input == "yes"
				puts @product.description 
			else 
				puts "that is not a valid response "
			end
		end

	end

	def exit
		puts "this is the exit "
	end

end
