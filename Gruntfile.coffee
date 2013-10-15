module.exports = (grunt) ->
  grunt.initConfig
    connect:
      server:
        options:
          keepalive: true
          base: 'static'
          port: 4000

  grunt.loadNpmTasks 'grunt-contrib-connect'

  grunt.registerTask 'default', ['connect']
