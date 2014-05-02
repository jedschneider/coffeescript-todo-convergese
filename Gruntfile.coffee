module.exports = (grunt) ->

  grunt.initConfig
    meta:
      src: [ 
        'js/**/*.js' 
        'lib/js/**/*.js'
      ]
      specs: 'spec/**/*.js'

    watch:
        files: '**/*.coffee'
        tasks: ['coffee']

    clean:
      build:
        src : [
          'lib'
          'js'
          'bower_components'
          'spec/*.js'
        ]

    jasmine:
      src: '<%= meta.src %>'
      options:
        specs: '<%= meta.specs %>'

    coffee:
      compile:
        files:
          'js/app.js': [
            'src/eventable.coffee'
            'src/todo.coffee'
            'src/todos.coffee'
            'src/todo_view.coffee'
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
          # 'js/todomvc-common': 'todomvc-common/*.js'
          'js': [
            'jquery/dist/jquery.js'
            'underscore/*.js'
          ]
          'css/todomvc-common': [
            'todomvc-common/*.css'
            'todomvc-common/*.png'
          ]

  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-jasmine')
  grunt.loadNpmTasks('grunt-contrib-clean')
  grunt.loadNpmTasks('grunt-bowercopy')


  grunt.registerTask('build', ['clean', 'bowercopy', 'coffee'])
  grunt.registerTask('test', ['coffee', 'jasmine'])
  grunt.registerTask('default', ['test'])

