class ApplicationController < Sinatra::Base

	require "bundler"
	Bundler.require

	ActiveRecord::Base.establish_connection(

		:adapter => "postgresql",
		:database => "collection"
	)

	set :views, File.dirname(__FILE__) + "/../views"

	not_found do
		status 404
		erb :not_found
	end

end