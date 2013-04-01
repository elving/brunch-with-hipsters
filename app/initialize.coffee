# Load App Helpers
require 'lib/helpers'

# Initialize Router
require 'routers/main'

$ ->
    # Initialize Backbone History
    Backbone.history.start pushState: yes
