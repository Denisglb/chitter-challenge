require 'data_mapper'
# require 'dm-migrations'

class Peep
	include DataMapper::Resource
	
	property :id, Serial
	property :chit, String
end