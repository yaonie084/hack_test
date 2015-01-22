var gulp = require('gulp');
var bower = require('gulp-bower')

var paths = {
  static_resource: 'client/*.*'
}

gulp.task('static_resource', function() {
  return gulp.src(paths.static_resource)
    .pipe(gulp.dest('public'));
});

gulp.task('bower', function() {
  return bower()
         .pipe(gulp.dest('public/lib'))
});

gulp.task('build', ['static_resource', 'bower']);

gulp.task('default', ['build'])