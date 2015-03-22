'use strict';

var gulp = require('gulp');
var taskListing = require('gulp-task-listing');

gulp.paths = {
  src: 'client',
  dist: 'dist',
  tmp: '.tmp',
  e2e: 'e2e',
  tests: 'tests',
  public: 'public'
};

require('require-dir')('./gulp')

gulp.task('default', ['clean'], function () {
    gulp.start('build');
});

// gulp.task('test', function(){
//     gulp.start('test')
// });

gulp.task('help', taskListing);