'use strict';

angular.
    module('core.employee')
    .factory('Employee', ['$resource',
    function ($resource) {
        return $resource(ENV + 'employees/:employeeId.json', {}, {
            query: {
                method: 'GET',
                params: {employeeId: ''},
                isArray: true
            }
        });
    }
]);
