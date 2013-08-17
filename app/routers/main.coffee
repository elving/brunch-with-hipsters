class MainRouter extends Backbone.Router
    routes:
        '': 'index'

    index: ->
        IndexView = require 'views/index'
        index = new IndexView()

main = new MainRouter()
module.exports = main
