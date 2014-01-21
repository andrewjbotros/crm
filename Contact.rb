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

require_relative 'Runner'

class CRM

	def initialize (id, firstName, lastName, email, notes)
		@id = id
		@firstName = firstName
		@lastName = lastName
		@email = email
		@notes = notes
	end

	def print_main_menu
		puts "Add, modify, display all, display contact, display attribute, delete or exit?"
	end

	def main_menu
		print_main_menu
		user_selected = gets.to_s.downcase
		call_option(user_selected)
	end

	def call_option (user_response)
		case user_response
		when "add"
			add_new_contact
		when "modify"
			modify_existing_contact
		when "display all"
			display_all_contacts
		when "display contact"
			display_contact
		when "delete"
			delete_contact
		when "exit"
			self.main_menu
		end
	end

			puts "Add a contact attribute (first name, last name, email, notes) to be modified!"
			contactAttribute = gets.chomp
			puts "Are you sure? (y/n)"
			@confirm = gets.chomp

			case @confirm
			when "y"
				puts "Would you like to change 'id', 'firstname', 'lastname' or 'email'?"
				@change = gets.chomp
				puts "What would you like to change #{@change} to?"
				@changeTo = gets.chomp
			when "n"
				puts "Okay! Head back over to the main menu"
				self.prompt
			end

		when "display all"
			puts "display all!"
		when "display contact"
			puts "display contact!"
		when "display attribute"
			puts "disply attribute!"
		when "delete"
			puts "delete!"
		when "exit"
			return
		else
			puts "Please try again. Would you like to ----- "
			self.prompt
		end

	end
end

Andrew = Contact.new(5, "Joe", "Shmo", "joe@email.com", "joe is smelly")
Andrew.prompt


