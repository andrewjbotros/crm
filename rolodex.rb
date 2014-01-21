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

require_relative 'Contact'

# As a developer, I should implement the Rolodex class as an array that accepts new contacts.
# As a developer, the rolodex class should have the following methods: add, modify_contact, display_all_contacts, display_particular_contact, display_info_by_attribute and delete_contact.


@contacts.select { |contact| contact.name == name}
class Rolodex

	def initialize
		@contacts = []
		@id = 1000
	end

	def add_new_contact
		id = @id + 1
		puts "First name:"
		first_name = gets.chomp.downcase
		puts "Last name:"
		last_name = gets.chomp.downcase
		puts "Email:"
		email = gets.chomp.downcase
		puts "Notes:"
		note = gets.chomp.downcase

		contact = Contact.new(id, first_name, last_name, email, note)
		@contact.push(contact)
		puts "\e[H\e[2J"
        puts "#{first_name} #{last_name}, ID: #{contact.id} has been created!"
	end

	def modify_existing_contact
		puts "Add a contact attribute (first_name, last_name, email, notes) to be modified:"
		user_attribute = gets.chomp
		puts "Are you sure? (y/n)"
		user_confirm = gets.chomp.downcase

		if user_confirm == "y"
			puts "What would you like to change #{user_attribute} to?"
			update = gets.chomp
			contact.user_attribute = update

			if user_confirm == "n"
				puts "Okay! Head back over to the main menu"
				main_menu
			end
		end
	end

	def find_contact(id)
		@contact.each {|contact| return contact if contact.id == id}
	end

	def display_all_contacts
	end

	def display_particular_contact
	end

	def display_info_by_attribute
	end

	def delete_contact
	end

end