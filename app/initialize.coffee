# App Namespace
# Change `Hipster` to your app's name
@Hipster ?= {}
Hipster.Routers ?= {}
Hipster.Views ?= {}
Hipster.Models ?= {}
Hipster.Collections ?= {}
Hipster.Socket ?= {}

$ ->
    # Load App Helpers
    require '../lib/app_helpers'

    # Start Socket.io Connection
    Hipster.Socket = io.connect 'http://localhost'
    Hipster.Socket.on 'connected', (data) -> console.log data

    # Initialize App
    Hipster.Views.AppView = new AppView = require 'views/app_view'

    # Initialize Backbone History
    Backbone.history.start pushState: yes
