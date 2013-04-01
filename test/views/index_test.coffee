Index = require 'views/index'

describe 'Index', ->
    beforeEach ->
        @index = new Index()

    it 'should exist', ->
        (expect @index).to.be.ok
