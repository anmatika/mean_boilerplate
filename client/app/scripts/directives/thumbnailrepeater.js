'use strict';

/**
 * @ngdoc directive
 * @name appApp.directive:thumbnailRepeater
 * @description
 * # thumbnailRepeater
 */
angular.module('portfolioApp')
  .directive('thumbnailRepeater', function () {
    return {
      templateUrl: 'template/thumbnailRepeater.html',
      restrict: 'E'
    };
  });
