#           ##########################################################
#           ##############                             ###############
#           ##############   CUSTOMER IS ALWAYS RIGHT  ###############
#           ##############                             ###############
#           ##########################################################

require_relative 'rolodex'
require_relative 'contact'

class CRA

	def self.print_main_menu
		puts "Add, modify, display all, display contact, display attribute, delete or exit?"
	end

	def self.main_menu
		print_main_menu
		user_selected = gets.to_s.downcase
		user_option(user_selected)
	end

	def self.user_option (user_response)
		case user_response
		when "add"
			add_new_contact
		when "modify"
			modify_existing_contact
		when "display all"
			display_all_contacts
		when "display contact"
			display_particular_contact
		when "display attribute"
			display_info_by_attribute
		when "delete"
			delete_contact
		when "exit"
			return
		else
			puts "Please try again. Would you like to ----- "
			main_menu
		end
	end

end

CRA.main_menu


