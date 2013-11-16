
module.exports = (grunt)->  

  grunt.initConfig

    pkg: grunt.file.readJSON 'package.json'

    jade:
      dev:
        options:
          pretty:true
        files:
          'index.html':'src/index.jade'
          





    coffee:
      dev:
        options:
          bare:true
        files:
          'dist/abn_tree_directive.js':'src/abn_tree_directive.coffee'
          'test/test_page.js':'test/test_page.coffee'


    watch:
      jade:
        files:['**/*.jade']
        tasks:['jade']
        options:
          livereload:true

      css:
        files:['**/*.css'] 
        tasks:[]     
        options:
          livereload:true


      coffee:
        files:['**/*.coffee']
        tasks:['coffee']
        options:
          livereload:true

  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['jade','coffee','watch']

