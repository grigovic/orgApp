'use strict';

describe('employeeDetail', function() {

  // Load the module that contains the `employeeDetail` component before each test
  beforeEach(module('employeeDetail'));

  // Test the controller
  describe('employeeDetailController', function() {
    var $httpBackend, ctrl;
    var xyzPhoneData = {
      name: 'employee xyz',
      images: ['image/url1.png', 'image/url2.png']
    };

    beforeEach(inject(function($componentController, _$httpBackend_, $routeParams) {
      $httpBackend = _$httpBackend_;
      $httpBackend.expectGET('phones/xyz.json').respond(xyzPhoneData);

      $routeParams.phoneId = 'xyz';

      ctrl = $componentController('employeeDetail');
    }));

    it('should fetch the employee details', function() {
      jasmine.addCustomEqualityTester(angular.equals);

      expect(ctrl.phone).toEqual({});

      $httpBackend.flush();
      expect(ctrl.phone).toEqual(xyzPhoneData);
    });

  });

});
