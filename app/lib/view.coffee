module.exports = class View extends Backbone.View
    tagName: 'section'

    template: ->

    initialize: ->
        @render()

    getRenderData: ->
        @model?.toJSON()

    render: ->
        # console.debug "Rendering #{@constructor.name}", @
        @beforeRender()
        @$el.html @template @getRenderData()
        @afterRender()
        @

    beforeRender: ->

    afterRender: ->

    destroy: ->
        @undelegateEvents()
        @$el.removeData().unbind()
        @remove()
        Backbone.View::remove.call @
