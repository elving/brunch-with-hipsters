# Brunch with Hipsters and Bootstrap

![image](http://www.latimes.com/media/photo/2011-07/63171841.jpg)

Brunch with Hipsters is a rad [Brunch](http://brunch.io/) app skeleton that comes with unicorns out of the box. Take a look at [Hackerank (an example app)](https://github.com/elving/Hackerank) to see how it works. Brunch with Hipsters was awesome before awesome was awesome.

## Languages

- [CoffeeScript](http://coffeescript.org/)
- [Stylus](http://learnboost.github.com/stylus/)
- [Handlebars](http://handlebarsjs.com/)

## Features

- [Swag v0.1.7](https://github.com/elving/swag)
- [Font Awesome v2.0](https://github.com/FortAwesome/Font-Awesome)
- [Modernizr v2.6.1](https://github.com/Modernizr/Modernizr)
- [Brunch Auto-Reload v1.3.2](https://github.com/brunch/auto-reload-brunch)
- [Backbone-Mediator](https://github.com/chalbert/Backbone-Mediator)
- [Lodash v0.8.2](https://github.com/bestiejs/lodash)
- [HTML5 Boilerplate v3.0.0](https://github.com/h5bp/html5-boilerplate)
- [Coffeelint 1.4.4](https://github.com/ilkosta/coffeelint-brunch)

## Getting started

#### Brunch with Hipsters Vanilla

    brunch new <appname> --skeleton git@github.com:elving/brunch-with-hipsters.git
    brunch w -s

or

    $ git clone git@github.com:elving/brunch-with-hipsters.git
    $ npm install
    $ brunch w -s

or

    $ git clone git@github.com:elving/brunch-with-hipsters.git && npm install && brunch w -s

#### Brunch with Hipsters and Bootstrap

Comes with [Twitter Bootstrap v2.0.4](https://github.com/twitter/bootstrap/)

    $ git clone -b bootstrap git@github.com:elving/brunch-with-hipsters.git
    $ cd brunch-with-hipsters
    $ npm install
    $ brunch w -s

or

    $ git clone -b bootstrap git@github.com:elving/brunch-with-hipsters.git && cd brunch-with-hipsters && npm install && brunch w -s

#### Brunch with Hipsters and Express-Socket.io

Comes with [Express v3.0.0rc2](https://github.com/visionmedia/express) and [Socket.io v0.9.9](https://github.com/learnboost/socket.io)

    $ git clone -b express-socket.io git@github.com:elving/brunch-with-hipsters.git
    $ cd brunch-with-hipsters
    $ npm install
    $ coffee server.coffee

or

    $ git clone -b express-socket.io git@github.com:elving/brunch-with-hipsters.git && cd brunch-with-hipsters && npm install && coffee server.coffee
