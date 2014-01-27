#           ##########################################################
#           ##############                             ###############
#           ##############     LOAD RELEVANT FILES     ###############
#           ##############                             ###############
#           ##########################################################

require_relative "contact"

# As a developer, I should implement the Rolodex class as an array that accepts new contacts.
# As a developer, the rolodex class should have the following methods: add, modify_contact, display_all_contacts, display_particular_contact, display_info_by_attribute and delete_contact.

class Rolodex

	def initialize
		@contacts = []
		@id = 1000
	end

	def find_contact (user_id)
		@contacts.each {|contact| return contact if contact.id == user_id}
	end

	def add_new_contact
		@id += 1
		puts "First name:"
		first_name = gets.chomp.downcase.capitalize
		puts "Last name:"
		last_name = gets.chomp.downcase.capitalize
		puts "Email:"
		email = gets.chomp.downcase
		puts "Notes:"
		note = gets.chomp.downcase.capitalize

		contact = Contact.new(@id, first_name, last_name, email, note)
		@contacts.push(contact)
		puts "\e[H\e[2J"
      puts "ID: #{contact.id} #{first_name} #{last_name} has been created successfully!"
		CRA.main_menu
	end

	def modify_existing_contact
		puts "Which contact (ID) would you like to delete?"
		id = gets.chomp.to_i
		contact = find_contact(id)

		puts "Add a contact attribute (first name, last name, email, notes) to be modified:"
		user_attribute = gets.chomp.to_s.downcase
		puts "Are you sure? (y/n)"
		user_confirm = gets.chomp.downcase

		if user_confirm == "y"
			puts "What would you like to change #{user_attribute} to?"
			update = gets.chomp
			contact.first_name = update if user_attribute == "first name"
			contact.last_name = update if user_attribute == "last name"
			contact.email = update if user_attribute == "email"
			contact.note = update if user_attribute == "notes"
			print "#{user_attribute} was succesfully changed to #{update}.\n\n"
			CRA.main_menu
		elsif user_confirm == "n"
			puts "Okay! Head back over to the main menu"
			CRA.main_menu
		end
	end

	def display_all_contacts
		@contacts.each do |contact|
    		print "ID: #{contact.id}\nFirst name: #{contact.first_name}\nLast name: #{contact.last_name}\nEmail: #{contact.email}\nNote: #{contact.note}\n"
    	end
    	CRA.main_menu
   end

   def display_all_contacts_only
		@contacts.each do |contact|
    		print "ID: #{contact.id}\nFirst name: #{contact.first_name}\nLast name: #{contact.last_name}\nEmail: #{contact.email}\nNote: #{contact.note}\n"
    	end
    end

	def display_particular_contact
		print "Which contact would you like to dispaly? (ID only) "
		user_id = gets.chomp.to_i
		puts ""
		contact = find_contact(user_id)
		puts "ID: #{contact.id}\nFirst name: #{contact.first_name}\nLast name: #{contact.last_name}\nEmail: #{contact.email}\nNotes: #{contact.note}"
		CRA.main_menu
	end

	def display_info_by_attribute
		puts "Which attribute (ID, first name, last name, email) would you like to display?"
		user_attribute = gets.chomp.to_s.downcase
		puts ""
		@contacts.each do |contact|
			puts contact.id if user_attribute.to_i == "id"
			puts contact.first_name if user_attribute == "first name"
			puts contact.last_name if user_attribute == "last name"
			puts contact.email if user_attribute == "email"
		end

		CRA.main_menu
   end

	def delete_contact
		puts "Which contact (id) would you like to delete?"
		id = gets.chomp.to_i
		@contacts.each do |contact|
    		if contact.id == id
    			@contacts.delete(contact)
    			puts "ID: #{id} has been successfully deleted."
    		else
    			puts "Sorry, that ID does not exist."
    		end
    	end
    	CRA.main_menu
	end

end