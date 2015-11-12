'use strict';

/**
 * @ngdoc directive
 * @name myApp.directive:thumbnailRepeater
 * @description
 * # thumbnailRepeater
 */
angular.module('myApp')
  .directive('disqus', function () {
    return {
      templateUrl: 'template/disqus.html',
      restrict: 'E'
    };
  });
