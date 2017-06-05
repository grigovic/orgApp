'use strict';

// Register `assignTask` component, along with its associated controller and template
angular.module('modal.assignTask').component('assignTask', {
    templateUrl: 'modal/assign-task/assign-task.template.html',
    bindings: {
        resolve: '<',
        close: '&',
        dismiss: '&'
    },
    controller: function () {
        var self = this;

        self.save = function () {
            self.close({$value: self.task});
        };

        self.cancel = function () {
            self.dismiss({$value: 'cancel'});
        };


        self.datePickerOptions = {
            minDate: new Date(),
            showWeeks: true
        };

    }
});