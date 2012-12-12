module.exports = class Collection extends Backbone.Collection
    resetSilent: (models) ->
        @reset(models, silent: yes)
