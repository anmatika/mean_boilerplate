'use strict';

/**
 * @ngdoc directive
 * @name appApp.directive:thumbnailRepeater
 * @description
 * # thumbnailRepeater
 */
angular.module('myApp')
  .directive('thumbnailRepeater', function () {
    return {
      templateUrl: 'template/thumbnailRepeater.html',
      restrict: 'E'
    };
  });
