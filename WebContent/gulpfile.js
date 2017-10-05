'use strict';
 
var gulp = require('gulp'),
 gutil = require("gulp-util"),
 sass = require('gulp-sass'),
 fs = require("fs");
 
gulp.task('sass', function () {
//	
  return gulp.src('./resources/src/css/*.scss')
    .pipe(sass().on('error', gutil.log))
    .pipe(gulp.dest('./resources/src/css'));
});
 
gulp.task('sass:watch', function () {
  gulp.watch('./resources/src/css/*.scss', ['sass']);
});

