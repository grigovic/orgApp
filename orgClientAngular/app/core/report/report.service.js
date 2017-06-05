'use strict';

angular.
    module('core.report')
    .factory('Report', ['$resource',
    function ($resource) {
        return $resource(ENV + 'reports/:reportId.json', {}, {
            query: {
                method: 'GET',
                params: {reportId: ''},
                isArray: true
            }
        });
    }
]);
