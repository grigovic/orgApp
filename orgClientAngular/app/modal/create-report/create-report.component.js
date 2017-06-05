'use strict';

// Register `createReport` component, along with its associated controller and template
angular.module('modal.createReport').component('createReport', {
    templateUrl: 'modal/create-report/create-report.template.html',
    bindings: {
        resolve: '<',
        close: '&',
        dismiss: '&'
    },
    controller: function () {
        var self = this;

        self.save = function () {
            self.close({$value: self.text});
        };

        self.cancel = function () {
            self.dismiss({$value: 'cancel'});
        };
    }
});