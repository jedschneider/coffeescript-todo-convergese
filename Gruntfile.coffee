module.exports = (grunt) ->

  grunt.initConfig
    meta:
      src: 'src/**/*.js'
      specs: 'spec/**/*.js'

    watch:
        files: '**/*.coffee'
        tasks: ['coffee']

    clean:
      build:
        src : [
          'lib'
          'js'
        ]

    jasmine:
      src: '<%= meta.src %>'
      options:
        specs: '<%= meta.specs %>'
        vendor: 'vendor/js/jasmine-given.js'

    coffee:
      compile:
        files:
          'js/app.js': [
            'src/app.coffee'
          ]
          'spec/app_spec.js': [
            'spec/*.coffee'
          ]

    bowercopy:
      options:
        clean: true

      glob:
        options:
          destPrefix: 'lib'
        files:
          'js/todomvc-common': 'todomvc-common/*.js'
          'js': [
            'jquery/dist/jquery.js'
            'underscore/*.js'
          ]
          'css/todomvc-common': 'todomvc-common/*.css'

  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-jasmine')
  grunt.loadNpmTasks('grunt-contrib-clean')
  grunt.loadNpmTasks('grunt-bowercopy')


  grunt.registerTask('build', ['bowercopy', 'coffee'])
  grunt.registerTask('test', ['coffee', 'jasmine'])
  grunt.registerTask('default', ['test'])

