(function () {
  "use strict";

  angular.module("app").controller("pageCtrl", function($scope) {

    $scope.purpleHippo = "Hello!";
    $scope.greenHippo = "Hippo";
    $scope.dangers = ["blah one", "blah two"];
    $scope.reviews = ["AngularJS is the best thing since sliced bread!", "I love AngularJS, especially when I'm programming!", "AngularJS is waaaaay better than Chinese Checkers."];
    $scope.addReview = function(review) {
      $scope.reviews.push(review);
      $scope.addDanger = function(danger) {
        $scope.dangers.push(danger);
      }
}

      


    window.scope = $scope;
  });
})();