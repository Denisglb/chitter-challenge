
ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require_relative 'model/peep'
require_relative 'data_mapper_setup'

class Chitter < Sinatra::Base

	get '/' do
		erb :index
		# sign up / sign in
	end

	get '/peep' do
		@peeps = Peep.all
		erb :peep
	end

	post '/peep' do 
		# erb :new
		Peep.create(chit: params[:boop])
		redirect '/peep'
	end
end