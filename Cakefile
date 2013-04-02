util = require 'util'
exec = (require 'child_process').exec
server = (require 'karma').server

task 'test', ->
    server.start configFile: './test/karma.conf.js', (exitCode) ->
        console.log "Karma has exited with #{exitCode}"
        process.exit exitCode

task 'build:test', ->
    exec 'brunch b', (error, stdout, stderr) ->
        if stdout
            console.log stdout
            server.start configFile: './test/karma.conf.js', (exitCode) ->
                console.log "Karma has exited with #{exitCode}"
                process.exit exitCode
        else if stderr
            console.log stderr
        else if error
            console.log error
