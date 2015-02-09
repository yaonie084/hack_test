'use strict';

var gulp = require('gulp');

gulp.paths = {
  src: 'client',
  dist: 'dist',
  tmp: '.tmp',
  e2e: 'e2e',
  public: 'public'
};

require('require-dir')('./gulp')

gulp.task('default', ['clean'], function () {
    gulp.start('build');
});