#           ##########################################################
#           ##############                             ###############
#           ##############     LOAD RELEVANT FILES     ###############
#           ##############                             ###############
#           ##########################################################

require_relative 'Contact'

As a developer, the contact class should have five attributes: id, first_name, last_name, email and notes.
As a developer, when a user creates a contact, all five attributes are mandatory.
As a developer, I am able to modify those attributes at any point in the program at a later time.
As a developer, the Contact class should also have a method that displays all of its values.

class Runner
	attr_accessor :id,:first_name:,:last_name,:email,:notes

	def initialize (id, first_name, last_name, email, notes)
		@id = id
		@first_name = first_name
		@last_name = last_name
		@email = email
		@notes = notes
	end

	def display
		print "ID: #{@id}\nFirst name: #{@first_name}\nLast name: #{@last_name}\nEmail: #{@email}\nNotes: #{@notes}"
	end

end