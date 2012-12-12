module.exports = class Model extends Backbone.Model
    setSilent: (attributes) ->
        @set(attributes, { silent: yes })

    push: (attribute, values...) ->
        obj  = {}
        attr = @get(attribute)

        attr.push(values...)
        obj[attribute] = attr

        @set(obj)

    pop: (attribute) ->
        obj  = {}
        attr = @get(attribute)

        attr.pop()
        obj[attribute] = attr

        @set(obj)

    reverse: (attribute) ->
        obj  = {}
        attr = @get(attribute)

        attr.reverse()
        obj[attribute] = attr

        @set(obj)

    shift: (attribute) ->
        obj  = {}
        attr = @get(attribute)

        attr.shift()
        obj[attribute] = attr

        @set(obj)

    unshift: (attribute, values...) ->
        obj  = {}
        attr = @get(attribute)

        attr.unshift(values...)
        obj[attribute] = attr

        @set(obj)

    splice: (attribute, values...) ->
        obj  = {}
        attr = @get(attribute)

        attr.splice(values...)
        obj[attribute] = attr

        @set(obj)

    add: (attribute, values...) ->
        obj  = {}
        attr = @get(attribute)

        attr += value for value in values
        obj[attribute] = attr

        @set(obj)

    subtract: (attribute, values...) ->
        obj  = {}
        attr = @get(attribute)

        attr -= value for value in values
        obj[attribute] = attr

        @set(obj)

    divide: (attribute, values...) ->
        obj  = {}
        attr = @get(attribute)

        attr /= value for value in values
        obj[attribute] = attr

        @set(obj)

    multiply: (attribute, values...) ->
        obj  = {}
        attr = @get(attribute)

        attr *= value for value in values
        obj[attribute] = attr

        @set(obj)
