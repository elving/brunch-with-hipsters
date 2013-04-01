task 'test', ->
    server = (require 'karma').server
    server.start configFile: './test/karma.conf.js', (exitCode) ->
      console.log "Karma has exited with #{exitCode}"
      process.exit exitCode
