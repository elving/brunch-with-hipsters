module.exports = class AppView extends Backbone.View
    el: 'body.application'

    initialize: ->
        @router = Hipster.Routers.AppRouter = new AppRouter = require '../routers/app_router'
