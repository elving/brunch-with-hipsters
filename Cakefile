util = require 'util'
exec = (require 'child_process').exec
server = (require 'karma').server

task 'test', ->
    config = "#{__dirname}/test/karma.conf.coffee"
    server.start configFile: config, (exitCode) ->
        console.log "Karma has exited with #{exitCode}"
        process.exit exitCode

task 'build:test', ->
    exec 'brunch b', (error, stdout, stderr) ->
        if stdout
            console.log stdout
            invoke 'test'
        else if stderr
            console.log stderr
        else if error
            console.log error
