'use strict';

var gulp = require('gulp');
var paths = gulp.paths;

var $ = require('gulp-load-plugins')();
gulp.task('test', function () {
    console.log (paths.tests + '/test.js')
    return gulp.src(paths.tests + '/test.js', {read: false})
        .pipe($.mocha({reporter: 'landing'}))
});