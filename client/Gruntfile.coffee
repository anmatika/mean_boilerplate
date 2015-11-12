# Generated on 2014-11-14 using generator-angular 0.10.0
'use strict'
# # Globbing
# for performance reasons we're only matching one level down:
# 'test/spec/{,*/}*.js'
# use this if you want to recursively match all subfolders:
# 'test/spec/**/*.js'

module.exports = (grunt) ->
  # Load grunt tasks automatically
  require('load-grunt-tasks') grunt
  # Time how long tasks take. Can help when optimizing build times
  require('time-grunt') grunt
  # Configurable paths for the application
  appConfig = 
    app: require('./bower.json').appPath or 'app'
    dist: '../server/dist'
  # Define the configuration for all the tasks
  grunt.initConfig
    yeoman: appConfig
    watch:
      bower:
        files: [ 'bower.json' ]
        tasks: [ 'wiredep' ]
      compass:
        files: [ '<%= yeoman.app %>/styles/{,*/}*.{scss,sass}' ]
        tasks: [
          'compass:server'
          'autoprefixer'
        ]
      gruntfile: files: [ 'Gruntfile.js' ]
      livereload:
        options: livereload: true
        files: [ '.tmp/styles/{,*/}*.css' ]
    protractor:
      options:
        configFile: 'test/protractor.conf.js'
        keepAlive: true
        noColor: false
        args: {}
      chrome: options: args: browser: 'chrome'
    jshint:
      options:
        jshintrc: '.jshintrc'
        reporter: require('jshint-stylish')
      all: src: [
        'Gruntfile.js'
        '<%= yeoman.app %>/scripts/{,*/}*.js'
      ]
      test:
        options: jshintrc: 'test/.jshintrc'
        src: [ 'test/spec/{,*/}*.js' ]
    coffee:
      options:
        sourceMap: false
        sourceRoot: ''
      dist: files: [ {
        expand: true
        cwd: '<%= yeoman.app %>/scripts'
        src: '{,*/}*.coffee'
        dest: '<%= yeoman.app %>/scripts'
        ext: '.js'
      } ]
      test: files: [ {
        expand: true
        cwd: 'test/spec'
        src: '{,*/}*.coffee'
        dest: '.tmp/spec'
        ext: '.js'
      } ]
    clean:
      dist: files: [ {
        dot: true
        src: [
          '.tmp'
          '<%= yeoman.dist %>/{,*/}*'
          '!<%= yeoman.dist %>/.git{,*/}*'
        ]
      } ]
      server: '.tmp'
    autoprefixer:
      options: browsers: [ 'last 1 version' ]
      dist: files: [ {
        expand: true
        cwd: '.tmp/styles/'
        src: '{,*/}*.css'
        dest: '.tmp/styles/'
      } ]
    wiredep:
      app:
        src: [ '<%= yeoman.app %>/index.html' ]
        ignorePath: /\.\.\//
      sass:
        src: [ '<%= yeoman.app %>/styles/{,*/}*.{scss,sass}' ]
        ignorePath: /(\.\.\/){1,2}bower_components\//
    compass:
      options:
        sassDir: '<%= yeoman.app %>/styles'
        cssDir: '.tmp/styles'
        generatedImagesDir: '.tmp/images/generated'
        imagesDir: '<%= yeoman.app %>/images'
        javascriptsDir: '<%= yeoman.app %>/scripts'
        fontsDir: '<%= yeoman.app %>/styles/fonts'
        importPath: './bower_components'
        httpImagesPath: '/images'
        httpGeneratedImagesPath: '/images/generated'
        httpFontsPath: '/styles/fonts'
        relativeAssets: false
        assetCacheBuster: false
        raw: 'Sass::Script::Number.precision = 10\n'
      dist: options: generatedImagesDir: '<%= yeoman.dist %>/images/generated'
      server: options: debugInfo: true
    filerev: dist: src: [
      '<%= yeoman.dist %>/scripts/{,*/}*.js'
      '<%= yeoman.dist %>/styles/{,*/}*.css'
      '<%= yeoman.dist %>/styles/fonts/*'
    ]
    useminPrepare:
      html: '<%= yeoman.app %>/index.html'
      options:
        dest: '<%= yeoman.dist %>'
        flow: html:
          steps:
            js: [
              'concat'
              'uglifyjs'
            ]
            css: [ 'cssmin' ]
          post: {}
    usemin:
      html: [
        '<%= yeoman.dist %>/{,*/}*.html'
        '<%= yeoman.dist %>/json/{,*/}*.json'
      ]
      css: [ '<%= yeoman.dist %>/styles/{,*/}*.css' ]
      options: assetsDirs: [
        '<%= yeoman.dist %>'
        '<%= yeoman.dist %>/images'
      ]
    imagemin: dist: files: [ {
      expand: true
      cwd: '<%= yeoman.app %>/images'
      src: '{,*/}*.{png,jpg,jpeg,gif}'
      dest: '<%= yeoman.dist %>/images'
    } ]
    svgmin: dist: files: [ {
      expand: true
      cwd: '<%= yeoman.app %>/images'
      src: '{,*/}*.svg'
      dest: '<%= yeoman.dist %>/images'
    } ]
    htmlmin: dist:
      options:
        collapseWhitespace: true
        conservativeCollapse: true
        collapseBooleanAttributes: true
        removeCommentsFromCDATA: true
        removeOptionalTags: true
      files: [ {
        expand: true
        cwd: '<%= yeoman.dist %>'
        src: [
          '*.html'
          'views/*.html'
        ]
        dest: '<%= yeoman.dist %>'
      } ]
    ngAnnotate: dist: files: [ {
      expand: true
      cwd: '.tmp/concat/scripts'
      src: [
        '*.js'
        '!oldieshim.js'
      ]
      dest: '.tmp/concat/scripts'
    } ]
    cdnify: dist: html: [ '<%= yeoman.dist %>/*.html' ]
    copy:
      dist: files: [
        {
          expand: true
          dot: true
          cwd: '<%= yeoman.app %>'
          dest: '<%= yeoman.dist %>'
          src: [
            '*.{ico,png,txt}'
            '.htaccess'
            '*.html'
            'views/{,*/}*.html'
            'images/{,*/}*.{webp}'
            'fonts/{,*/}*.*'
            'index.js'
            'package.json'
            'images/galleria/**/*.*'
            'template/{,*/}*.html'
            'json/{,*/}*.json'
          ]
        }
        {
          expand: true
          cwd: '.tmp/images'
          src: [ 'generated/*' ]
          dest: '<%= yeoman.dist %>/images'
        }
        {
          expand: true
          cwd: 'bower_components/bootstrap/dist'
          src: 'fonts/*'
          dest: '<%= yeoman.dist %>'
        }
        {
          expand: true
          cwd: 'bower_components/octicons/octicons'
          src: '*.{ttf,eot,woff}'
          dest: '<%= yeoman.dist %>/styles'
        }
      ]
      styles:
        expand: true
        cwd: '<%= yeoman.app %>/styles'
        dest: '.tmp/styles/'
        src: '{,*/}*.css'
    concurrent:
      options:
        logConcurrentOutput: true
        limit: 20
      server: [ 'compass:server' ]
      test: [ 'compass' ]
      dist: [
        'compass:dist'
        'imagemin'
        'svgmin'
      ]
    karma: unit:
      configFile: 'test/karma.conf.js'
      autoWatch: true
  grunt.registerTask 'serve', 'Compile then start a connect web server', (target) ->
    if target == 'dist'
      return grunt.task.run([
        'build'
        'connect:dist:keepalive'
      ])
    grunt.task.run [
      'clean:server'
      'wiredep'
      'concurrent:server'
      'autoprefixer'
      'connect:livereload'
      'watch'
    ]
    return
  grunt.registerTask 'server', 'DEPRECATED TASK. Use the "serve" task instead', (target) ->
    grunt.log.warn 'The `server` task has been deprecated. Use `grunt serve` to start a server.'
    grunt.task.run [ 'serve:' + target ]
    return
  grunt.registerTask 'test', [
    'clean:server'
    'concurrent:test'
    'autoprefixer'
    'connect:test'
    'karma'
  ]
  grunt.registerTask 'unit', [
    'concurrent:test'
    'autoprefixer'
    'connect:test'
    'karma'
  ]
  grunt.registerTask 'e2e', [
    'connect:test'
    'protractor'
  ]
  grunt.registerTask 'build', [
    'clean:dist'
    'wiredep'
    'useminPrepare'
    'concurrent:dist'
    'autoprefixer'
    'concat'
    'ngAnnotate'
    'copy:dist'
    'cdnify'
    'cssmin'
    'uglify'
    'filerev'
    'usemin'
    'htmlmin'
  ]
  grunt.registerTask 'default', [
    'newer:jshint'
    'test'
    'build'
  ]
  return

# ---
# generated by js2coffee 2.1.0