class PetToys::CLI

	def call
		list
		menu
		exit 
	end 

	
	def list
		puts PetToys::Product.get_products
	end


	def menu
		puts "this is the menu"
	end

	def exit
		puts "this is the exit "
	end





end
