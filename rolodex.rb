#           ##########################################################
#           ##############                             ###############
#           ##############     LOAD RELEVANT FILES     ###############
#           ##############                             ###############
#           ##########################################################

require_relative 'Contact'

# As a developer, I should implement the Rolodex class as an array that accepts new contacts.
# As a developer, the rolodex class should have the following methods: add, modify_contact, display_all_contacts, display_particular_contact, display_info_by_attribute and delete_contact.

class Rolodex

	def initialize
		@contacts = []
		@id = 1000
	end

	def add
		id = @id + 1
		puts "First name:"
		first_name = gets.chomp.downcase
		puts "Last name:"
		last_name = gets.chomp.downcase
		puts "Email:"
		email = gets.chomp.downcase
		puts "Notes:"
		ntoes = gets.chomp.downcase

		contact = Contact.new(id, first_name, last_name, email, notes)
		@contact.push(contact)
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