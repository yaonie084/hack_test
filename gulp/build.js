'use strict';

var gulp = require('gulp');

var paths = gulp.paths;

var $ = require('gulp-load-plugins')({
  pattern: ['gulp-*', 'main-bower-files', 'uglify-save-license', 'del']
});

gulp.task('partials', ['markup'], function() {
  return gulp.src([
              paths.src + '/{app, components}/**/*.html',
              paths.tmp + '/{app, components}/**/*.html'
              ])
             .pipe($.minifyHtml({
               empty: true,
               spare: true,
               quotes: true
             }))
             .pipe(gulp.dest(paths.tmp + '/partials/'))
});

gulp.task('clean', function (done) {
  $.del([paths.dist + '/', paths.tmp + '/'], done);
});

gulp.task('misc', function () {
  return gulp.src(paths.src + '/**/*.ico')
    .pipe(gulp.dest(paths.dist + '/'));
});

gulp.task('build', ['partials', 'misc'])

// gulp.task('static_resource', function() {
//   return gulp.src(paths.static_resource)
//     .pipe(gulp.dest('public'));
// });

// gulp.task('bower', function() {
//   return bower()
//          .pipe(gulp.dest('public/lib'))
// });

// gulp.task('build', ['static_resource', 'bower']);