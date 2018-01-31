class PetToys::CLI

	def call
		list
		menu
		
	end 

	
	def list
		@products = PetToys::Product.get_products
		@products.each.with_index(1) do |product, i|
		puts "Product #{i}: #{product.title} Price: #{product.price}"

		end
	end 


	def menu
		puts "Would you like to see more information? Type '1' to see more details about the work-to-eat toy , or '2' to see more details about the soft toy. Type 'list' to see list again or 'exit' to leave."
		input = nil 
		
		while input != "exit"
			input = gets.strip.downcase

			if input.to_i > 0    #to check it's not a string
				toy = @products[input.to_i-1]
				puts "#{toy.description}" 

			elsif input == 'list'
				list


			elsif input == "exit"
				self.exit
				else  
				puts "that is not a valid response "
			end
		end

	end

	def exit
		puts "this is the exit "
	end

end
