describe 'Main', ->
    before ->
        @main = require 'routers/main'

    it 'should exist', ->
        expect(@main).to.be.ok

    it 'should route to `index` when navigating to /', ->
        expect('/').to.route.to @main, 'index', arguments: []
