#The CookBook
###Authored by Austin Steward
***
##Description
This rails web app uses two models (`Recipe` & `Tag`) that are related through a `has_and_belongs_to_many` assocation. Users may create both recipes and tags, add tags to recipes, and search for recipes with a specific tag. A Bootstrap theme is used through the assets pipeline, with additional styling added. Dismissable `flash[:notice]` and `flash[:alert]` are located throughout the site with appropriate messages related to model creation, updating, and deletion. A form partial was also created for creating and editing a `Recipe` class object.
***
##Dependencies
- [Bootstrap](http://getbootstrap.com/)
- [Bootstrap.min.js](http://getbootstrap.com/javascript/)
- [jQuery](http://jquery.com/)
- [Sass](http://sass-lang.com/)

***
##Licensing
- [MIT](http://opensource.org/licenses/MIT)
