# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer: The view is what the user sees (frontend) while the model/controller make up the backend.

  Researched answer: 
  Model: shape of the data and business logic
  View: user interface, which displays the data
  Controller: renders the appropriate view with the model data
  
  How Ruby on Rails handles MVC:
  Model (ActiveRecord) - maintains the relationship between the objects and the database
  View (ActionView library) - an Embedded Ruby (ERb) based system for defining presentation templates for data presentation
  Controller (ActionController) - data broker between ActiveRecord and ActionView
  
  References: https://www.tutorialsteacher.com/mvc/mvc-architecture
  https://www.tutorialspoint.com/ruby-on-rails/rails-framework.htm

2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the __route__ in the file config/routes.rb
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the _controller_ in the file statics_controller.rb
  ```
  class statics_controller < ApplicationController
    def about
      render about.htm.erb
    end
  end
  ```

  Step 3: Create the View in the file __about.html.erb__
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of  each route.


/users/       method="GET"     # :controller => 'users', :action => 'index'
Display a list of all users


/users/1      method="GET"     # :controller => 'users', :action => 'show'
Display a specific user

/users/new    method="GET"     # :controller => 'users', :action => 'new'
Return an HTML form for creating a new user

/users/       method="POST"    # :controller => 'users', :action => 'create'
Create a new user

/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
Return an HTML form for editing a user

/users/1      method="PUT"     # :controller => 'users', :action => 'update'
Update a specific user

/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
Delete a specific user



3b. Which of the above routes must always be passed params and why?
/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
/users/1      method="GET"     # :controller => 'users', :action => 'show'
/users/1      method="PUT"     # :controller => 'users', :action => 'update'
/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'

These routes must be passed params because they cause actions on specific data rather than all of the data. 

4. What is the public folder used for in Rails?

  Your answer: Not sure

  Researched answer: The public folder is the only folder seen by the world as-is. It contains static files and compiled assets. 


5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

get 'main/:guess' => "main#game"



6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer: It specifies how to process the form.

  Researched answer: It specifies where to send the form data when the form is submitted. You designate the HTTP verb in the method="get" or method="post" that is within the opening form tag.



7. Name two rails generator commands and what files they create:

  Your answer: 
  rails generate migration 
  rails generate resource: generates the routes
  

  Researched answer:
  rails generate migration: Generates a migration file -- this allows you to use Ruby to define changes to your database schema. 
  
  rails generate resource: 
-- A migration file that will create a new database table for the attributes passed to it in the generator
--A model file that inherits from ActiveRecord::Base
--A controller file that inherits from ApplicationController
--A view directory, but no view template files
--A view helper file
--A Coffeescript file for specific JavaScripts for that controller
--A scss file for the styles for the controller
--A full resources call in the routes.rb file

Reference: https://github.com/learn-co-curriculum/rails-generators-readme
  


8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

I looked at Rails Guides

1. A frequent practice is to place the standard CRUD actions in each controller in the following order: index, show, new, edit, create, update and destroy. You may use any order you choose, but keep in mind that these are public methods -- they must be placed before declaring private visibility in the controller

2. Nested resources 

resources :articles do
  resources :comments
end

3. http_basic_authenticate_with
Blocks access to the various actions if the person is not authenticated


class ArticlesController < ApplicationController
 
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
 
  def index
    @articles = Article.all
  end
 

class CommentsController < ApplicationController
 
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
 
  def create
    @article = Article.find(params[:article_id])
    # ...
  end

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer:

  Researched answer:
