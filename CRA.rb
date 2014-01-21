#           ##########################################################
#           ##############                             ###############
#           ##############   CUSTOMER IS ALWAYS RIGHT  ###############
#           ##############                             ###############
#           ##########################################################

require_relative "rolodex"
require_relative "contact"

class CRA

	@rolodex = Rolodex.new
	@rolodex.add_new_contact

	def self.print_main_menu
		puts "Add, modify, display all, display contact, display attribute, delete or exit?"
	end

	def self.main_menu
		print_main_menu
		user_selected = gets.chomp.to_s.downcase
		user_option(user_selected)
	end

	def self.user_option (user_selected)
		case user_selected
		when "add"
			@rolodex.add_new_contact
		when "modify"
			@rolodex.modify_existing_contact
		when "display all"
			@rolodex.display_all_contacts
		when "display contact"
			@rolodex.display_particular_contact
		when "display attribute"
			@rolodex.display_info_by_attribute
		when "delete"
			@rolodex.delete_contact
		when "exit"
			puts "Thanks. Have a nice day!"
			return
		else
			puts "Please try again. Would you like to ----- "
			main_menu
		end
	end

end

CRA.main_menu


