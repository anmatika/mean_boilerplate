'use strict';

/**
 * @ngdoc function
 * @name app.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the app
 */
angular.module('portfolioApp')
	.controller('MainCtrl', function($scope, $timeout, dataSvc) {
		
		getQuestions();

		$scope.setActive = function (q, question) {
			clearActive(question);
			q.active = true;
			
		}

		$scope.isActive = function (q){
			return q.active;
		}

		$scope.submit = function (questions){
			$scope.result = "Lorem ipsum dolor sit amet, euismod appellantur vis at, stet illum legendos mei ad. Dico everti volumus at usu. Sint commune honestatis nam ex, per no quem nihil equidem, solet ridens nec ex. In mei ludus partem vivendo, officiis lucilius legendos at eos.";
		}

		function clearActive(question){
			question.yes.active = false;
			question.no.active = false;
		}

		function getQuestions() {
			$scope.questions = [
				{
					label: "Should I",
					yes: {
						text: "Yes"
					},
					no: {
						text: "No"
					}
					
				},
				{
					label: "Would I",
					yes: {
						text: "Yes"
					},
					no: {
						text: "No"
					}
				},
				{
					label: "Shall I",
					yes: {
						text: "Yes"
					},
					no: {
						text: "No"
					}
				},
				{
					label: "Do I",
					yes: {
						text: "Yes"
					},
					no: {
						text: "No"
					}
				}
				
			]



		}
		
	});

