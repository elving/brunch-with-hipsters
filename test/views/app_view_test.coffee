AppView = require 'views/app_view'

describe 'AppView', ->
    beforeEach ->
        @view = new AppView()

    it "should exist", ->
        expect( @view ).to.be.ok()
