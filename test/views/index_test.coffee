Index = require 'views/index'

describe 'Index', ->
    before ->
        body = document.createElement 'body'
        body.className = 'application'

        @index = new Index
        @index.setElement body

    it 'should exist', ->
        expect(@index).to.be.ok

    it 'should have the `body` element assign to the `el` property', ->
        expect(@index.$el).to.exist
        expect(@index.$el.is 'body').to.be.true
        expect(@index.$el).to.have.class 'application'
