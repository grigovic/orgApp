'use strict';

angular.
    module('core.task')
    .factory('Task', ['$resource',
    function ($resource) {
        return $resource(ENV + 'tasks/:taskId.json', {}, {
            query: {
                method: 'GET',
                params: {taskId: ''},
                isArray: true
            }
        });
    }
]);
