View = require './view'

class ViewCollection extends View
    collection: new Backbone.Collection()

    view: new View()

    views: []

    length: ->
        @views.length

    add: (views, options = {}) ->
        views = if _.isArray(views) then views.slice() else [views]
        for view in views
            unless @get view.cid
                @views.push(view)
                @trigger('add', view, @) unless options.silent
        @

    get: (cid) ->
        @find((view) -> view.cid is cid) or null

    remove: (views, options = {}) ->
        views = if _.isArray(views) then views.slice() else [views]
        for view in views
            @destroy(view)
            @trigger('remove', view, @) unless options.silent
        @

    destroy: (view = @, options = {}) ->
        _views = @filter(_view) -> view.cid isnt _view.cid
        @views = _views
        view.undelegateEvents()
        view.$el.removeData().unbind()
        view.remove()
        Backbone.View::remove.call view
        @trigger('remove', view, @) unless options.silent
        @

    reset: (views, options = {}) ->
        views = if _.isArray(views) then views.slice() else [views]
        @destroy(view, options) for view in @views
        if views.length isnt 0
            @add(view, options) for view in views
            @trigger('reset', view, @) unless options.silent
        @

    renderOne: (model) =>
        view = new @view model: model
        @$el.append view.render().el
        @add view
        @

    renderAll: ->
        @collection.each @renderOne
        @

# Underscore methods that we want to implement on the Collection.
methods = ['forEach', 'each', 'map', 'reduce', 'reduceRight', 'find',
    'detect', 'filter', 'select', 'reject', 'every', 'all', 'some', 'any',
    'include', 'contains', 'invoke', 'max', 'min', 'sortBy', 'sortedIndex',
    'toArray', 'size', 'first', 'initial', 'rest', 'last', 'without', 'indexOf',
    'shuffle', 'lastIndexOf', 'isEmpty', 'groupBy']

# Mix in each Underscore method as a proxy to `ViewCollection#views`.
_.each methods, (method) ->
    ViewCollection::[method] = ->
        _[method].apply _, [@views].concat(_.toArray(arguments))

module.exports = ViewCollection
