# Standin gem
A Ruby on Rails Engine for creating dummy pages as "standins" without the needs for routes or controllers.

Install
-----

This is still in alpha and under heavy development (read untested...). To use, clone the rails engine:

		git clone@github.com/jhoglund/standin.git

Link to in from gem to your Gemfile in your Ruby on Rails 3.2 application:

    gem "standin", :path => 'path/to/the/git/repository'

		
How to use
-----

The gem allows for adding pages for prototyping without the need to create routes or controllers. To do so, add a `standing` directory in your `app` directory. To create a navigational structure add pages and sub-pages in a named hierarchy. I.E:

		rails_app/
			app/
				standin/
					index.html.erb # localhost:3000
					users/
						index.html.erb # localhost:3000/users/
						first_user/
							index.html.erb # localhost:3000/users/first_user/
							edit.html.erb # localhost:3000/users/first_user/edit
					settings.html.erb  # localhost:3000/settings/
							
Any concurring route added to the routes file of the rails application will overwrite the structure created by the Standin gem.

Configuration
-----

If one wants a custom layout to be used for the standin pages, either place a layout named `standing.html{.erb}` in the `app/views/layouts` directory.