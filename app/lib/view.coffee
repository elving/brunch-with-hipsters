Model = require 'lib/model'

module.exports = class View extends Backbone.View
    debug: off

    startDebugging: ->
        @on "#{@cid}:initialize", -> console.debug "Initialized #{@name}", @
        @on "#{@cid}:render", -> console.debug "Rendered #{@name}", @
        @on "#{@cid}:update", -> console.debug "Updated #{@name}", @
        @on "#{@cid}:destroy", -> console.debug "Destroyed #{@name}", @

    type: 'view'

    name: null

    autoRender: off

    rendered: no

    model: new Model()

    template: -> ''

    # jQuery Shortcuts
    html: (dom) ->
        @$el.html(dom)
        @trigger "#{@cid}:#{if @rendered then 'update' else 'render'}", @
        @$el

    append: (dom) ->
        @$el.append(dom)
        @trigger "#{@cid}:#{if @rendered then 'update' else 'render'}", @
        @$el

    prepend: (dom) ->
        @$el.prepend(dom)
        @trigger "#{@cid}:#{if @rendered then 'update' else 'render'}", @
        @$el

    after: (dom) ->
        @$el.after(dom)
        @trigger "#{@cid}:update", @
        @$el

    before: (dom) ->
        @$el.after(dom)
        @trigger "#{@cid}:update", @
        @$el

    css: (css) ->
        @$el.css(css)
        @trigger "#{@cid}:update", @
        @$el

    find: (selector) ->
        @$el.find(selector)

    delegate: (event, selector, handler) ->
        handler = selector if arguments.length is 2
        handler = (handler).bind @

        if arguments.length is 2
            @$el.on event, handler
        else
            @$el.on event, selector, handler

    # Use bootstrap method instead of initialize
    bootstrap: ->

    initialize: ->
        @bootstrap()

        @name = @name or @constructor.name
        @startDebugging() if @debug is on
        @render() if @autoRender is on

        @trigger "#{@cid}:initialize", @

    getRenderData: ->
        @model?.toJSON()

    render: ->
        @trigger "#{@cid}:render:before", @

        @$el.attr('data-cid', @cid)
        @html @template(@getRenderData())
        @rendered = yes

        @trigger "#{@cid}:render:after", @
        @

    destroy: (keepDOM = no) ->
        @trigger "#{@cid}:destroy:before", @

        if keepDOM then @dispose() else @remove()
        @model?.destroy()

        @trigger "#{@cid}:destroy:after", @
