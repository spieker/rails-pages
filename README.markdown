RailsPages
==========

A really simple rails engine, serving text files from app/pages as HTML (currently only supports Markdown)

Usage
-----

* Gemfile

````ruby
gem 'rails-pages'
````

* config/routes.rb

````ruby
mount RailsPages::Engine => 'pages', as: 'static'
````

Now add the test page `app/pages/test.md`

````markdown
TEST
====

Lorem ipsum ...
````

License
-------

This project rocks and uses MIT-LICENSE.
