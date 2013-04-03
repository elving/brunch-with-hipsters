# Brunch with Hipsters and Bootstrap

![image](http://www.latimes.com/media/photo/2011-07/63171841.jpg)

Brunch with Hipsters is a rad [Brunch](http://brunch.io/) app skeleton that comes with unicorns out of the box. Take a look at [Hackerank (an example app)](https://github.com/elving/Hackerank) to see how it works. Brunch with Hipsters was awesome before awesome was awesome.

## Languages

- [CoffeeScript](http://coffeescript.org/)
- [Stylus](http://learnboost.github.com/stylus/)
- [Handlebars](http://handlebarsjs.com/)

## Features

- [Swag v0.2.6](https://github.com/elving/swag)
- [Font Awesome v3.0.2](https://github.com/FortAwesome/Font-Awesome)
- [Typeplate v1.0.1](https://github.com/typeplate/typeplate.github.com)
- [Modernizr v2.6.2](https://github.com/Modernizr/Modernizr)
- [Brunch Auto-Reload v1.5.2](https://github.com/brunch/auto-reload-brunch)
- [Lodash v1.1.1](https://github.com/bestiejs/lodash)
- [HTML5 Boilerplate v4.1.0](https://github.com/h5bp/html5-boilerplate)
- [Coffeelint 1.4.4](https://github.com/ilkosta/coffeelint-brunch)

## Getting started

    brunch new <appname> --skeleton git@github.com:elving/brunch-with-hipsters.git
    brunch w -s

or

    $ git clone git@github.com:elving/brunch-with-hipsters.git
    $ npm install
    $ brunch w -s

or

    $ git clone git@github.com:elving/brunch-with-hipsters.git && npm install && brunch w -s

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

You can change Karma's configuration by editing `test/karma.conf.js` and add any test helpers by editing `test/helpers.coffee`.
