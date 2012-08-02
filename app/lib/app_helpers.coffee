(() ->
    # Tell Swag where to look for partials
    Swag.Config.partialsPath = '../views/templates/'

    # IIFE to avoid collisions with other variables
    (->
        # Make it safe to do console.log() always.
        console = window.console = window.console or {}
        method = undefined
        dummy = ->
        methods = ('assert,count,debug,dir,dirxml,error,exception,
                   group,groupCollapsed,groupEnd,info,log,markTimeline,
                   profile,profileEnd,time,timeEnd,trace,warn').split ','

        console[method] = console[method] or dummy while method = methods.pop()
    )()

    # Extend Backbone Views
    Backbone.View::template = ->

    Backbone.View::getRenderData = ->
        @model?.toJSON()

    Backbone.View::render = ->
        console.debug "Rendering #{@constructor.name}", @
        @$el.html @template @getRenderData()
        @afterRender()
        @

    Backbone.View::afterRender = ->
        # console.debug "Rendered #{@constructor.name}", @

    # Put your handlebars.js helpers here.
)()
