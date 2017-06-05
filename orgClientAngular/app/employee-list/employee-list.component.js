'use strict';

// Register `employeeList` component, along with its associated controller and template
angular.
  module('employeeList').
  component('employeeList', {
    templateUrl: 'employee-list/employee-list.template.html',
    controller: ['Employee',
      function employeeListController(Employee) {
        this.employees = Employee.query();
        this.orderProp = 'name';
      }
    ]
  });
