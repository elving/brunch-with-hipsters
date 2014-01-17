# Brunch with Hipsters

![image](http://www.latimes.com/media/photo/2011-07/63171841.jpg)

Brunch with Hipsters is a rad [Brunch](http://brunch.io/) app skeleton that comes with unicorns out of the box. Take a look at [Hackerank (an example app)](https://github.com/elving/Hackerank) to see how it works. Brunch with Hipsters was awesome before awesome was awesome.

## Languages

- [CoffeeScript](http://coffeescript.org/)
- [Stylus](http://learnboost.github.com/stylus/)
- [Handlebars](http://handlebarsjs.com/)

## Features

- [jQuery](https://github.com/jquery/jquery)
- [Lodash](https://github.com/bestiejs/lodash)
- [Backbone](https://github.com/jashkenas/backbone)
- [Swag](https://github.com/elving/swag)
- [Font Awesome](https://github.com/FortAwesome/Font-Awesome)
- [HTML5 Boilerplate Helpers](https://github.com/h5bp/html5-boilerplate)

## Plugins

- [Brunch Auto-Reload](https://github.com/brunch/auto-reload-brunch)
- [Coffeelint](https://github.com/ilkosta/coffeelint-brunch)
- [imageoptimizer-brunch](https://github.com/steffenmllr/imageoptmizer-brunch)

## Getting started

    $ brunch new git@github.com:elving/brunch-with-hipsters.git
    $ brunch w -s

or

    $ git clone git@github.com:elving/brunch-with-hipsters.git
    $ npm install
    $ bower install
    $ brunch w -s

or

    $ git clone git@github.com:elving/brunch-with-hipsters.git && npm install && $ bower install && brunch w -s

## Generators

First install [scaffolt](https://github.com/paulmillr/scaffolt#readme):

    npm install -g scaffolt

Then you can use the following commands to generate files:

    scaffolt view <name>
        → app/views/name.coffee
        → test/views/name_test.coffee

    scaffolt model <name>
        → app/models/name.coffee
        → test/models/name_test.coffee

    scaffolt style <name>
        → app/views/styles/name.styl

    scaffolt template <name>
        → app/views/templates/name.hbs

    scaffolt collection <name>
        → app/collections/name.coffee
        → test/collections/name_test.coffee

    scaffolt module <name>
        → app/views/name.coffee
        → test/views/name_test.coffee
        → app/models/name.coffee
        → test/models/name_test.coffee
        → app/views/styles/name.styl
        → app/views/templates/name.hbs

## Testing

To run your tests using [Karma](https://github.com/karma-runner) you will need to install [phantomjs](https://github.com/ariya/phantomjs):

    brew update && brew install phantomjs

Run the tests:

    cake test

Build and test your app:

    cake build:test

You can change Karma's configuration by editing `test/karma.conf.coffee` and add any test helpers by editing `test/helpers.coffee`.


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/elving/brunch-with-hipsters/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

