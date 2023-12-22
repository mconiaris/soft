# README

Thank you for considering me for the PacerPro web developer position. This is my response to the coding test. The code endevors to create a soft delete function for items, as per your specifications. 

I've kept it bare bones, both in substance and style. In order to keep my controllers clean, I modified the Index destroy action to implement a soft_delete method and created a Removed controller that uses its destroy action to restore it.

I implemented partials so that items added and removed would show up on the homepage.

To make things easier for you, I here is a link to **[a Website](https://thawing-spire-40801-f61f4dd0fa1b.herokuapp.com/)** where you can see it in action.

Please don't judge me on my site styling. I did it quick and easy. If this were for a client, I would have made it look much nicer.



Here's the **[code](https://github.com/mconiaris/soft)** on GitHub.

### Source Material
Ruby on Rails Guides: https://guides.rubyonrails.org/index.html

default_scope: https://apidock.com/rails/ActiveRecord/Scoping/Default/ClassMethods/default_scope

update_columns: https://apidock.com/rails/ActiveRecord/Persistence/update_columns

Active Record Timestamp: https://api.rubyonrails.org/classes/ActiveRecord/Timestamp.html

Active Support with Time Zone: https://api.rubyonrails.org/classes/ActiveSupport/TimeWithZone.html

RSpec Documentation: https://rspec.info/documentation/

RSpec Style Guide: https://rspec.rubystyle.guide/

Rpsec Matchers#change: https://www.rubydoc.info/gems/rspec-expectations/RSpec/Matchers:change

Rspec Matchers - be_within: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/be-within/

Medium: What does let do?: https://medium.com/@tomkadwill/all-about-rspec-let-a3b642e08d39

Soft delete from scratch in Ruby on Rails (YouTube): https://www.youtube.com/watch?v=8KOwko02fvM

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
