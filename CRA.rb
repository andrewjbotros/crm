
# As a user, I am presented with a prompt to 'add', 'modify', 'display all', 'display contact', display attribute', 'delete' and 'exit'.
# As a user, if 'add' is typed, I am prompted to give my 'first name', 'last name', 'email' and 'notes'.
# As a user, if 'modify' is typed, I am prompted to enter a contact attribute to be modified.
# As a user, when an attribute is entered, I am prompted to type 'yes' or 'no' to confirm my selection.
# As a user, if 'yes' is typed, I am prompted to change 'id', 'firstname', 'lastname' and 'email'.
# As a user, when an attribute is entered, I am prompted to enter a new value for the attribute.
# As a user, if 'no' is typed, I am returned back to the main menu.
# As a user, if 'display all' is typed, I am shown all of the contacts that exist.
# As a user, if 'display contact' is typed, I am shown a particular contact.
# As a user, if 'display attribute' is typed, I am prompted to enter an attribute so that I can see all of the contacts according to that attribute.
# As a user, if 'delete' is typed, I am prompted to enter an attribute value of the contact to be deleted.
# As a user, if 'exit' is typed, I am exited out of the program and returned to the command line.

#           ##########################################################
#           ##############                             ###############
#           ##############     LOAD RELEVANT FILES     ###############
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
		call_option(user_selected)
	end

	def self.call_option (user_response)
		case user_response
		when "add"
			add_new_contact
		when "modify"
			modify_existing_contact
		when "display all"
			display_all_contacts
		when "display contact"
			display_contact
		when "display attribute"
			display_attribute
		when "delete"
			delete_contact
		when "exit"
			exit
		else
			puts "Please try again. Would you like to ----- "
			main_menu
		end
	end

	def self.add_new_contact
		print "Enter First Name: "
		first_name = gets.chomp
		print "Enter Last Name: "
		last_name = gets.chomp
		print "Enter Email Address: "
		email = gets.chomp
		print "Enter a Note: "
		note = gets.chomp
		contact = Contact.new(first_name, last_name, email, note)
	end

	def self.modify_existing_contact
		puts "Add a contact attribute (first name, last name, email, notes) to be modified!"
		user_attribute = gets.chomp
		puts "Are you sure? (y/n)"
		user_confirm = gets.chomp.downcase

		if user_confirm == "y"
			puts "What would you like to change #{user_attribute} to?"
			changeTo = gets.chomp
		if user_confirm == "n"
			puts "Okay! Head back over to the main menu"
			main_menu
		end
	end

end


