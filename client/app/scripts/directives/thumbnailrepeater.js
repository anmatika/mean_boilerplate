'use strict';

/**
 * @ngdoc directive
 * @name myApp.directive:thumbnailRepeater
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
