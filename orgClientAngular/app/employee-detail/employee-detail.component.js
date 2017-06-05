'use strict';

// Register `employeeDetail` component, along with its associated controller and template
angular.module('employeeDetail').component('employeeDetail', {
    templateUrl: 'employee-detail/employee-detail.template.html',
    controller: ['$routeParams', '$uibModal', '$log', 'Employee', 'Report', 'Task', 'Notification',
        function employeeDetailController($routeParams, $uibModal, $log, Employee, Report, Task, Notification) {
            var self = this;
            self.employee = Employee.get({employeeId: $routeParams.employeeId}, function (employee) {});

            self.setImage = function setImage(imageUrl) {
                self.mainImageUrl = imageUrl;
            };


            self.openSendReport = function () {
                var modalInstance = $uibModal.open({
                    animation: true,
                    component: 'createReport'
                });

                modalInstance.result.then(function (item) {
                    self.reportToManager = item;
                    Report.save({
                        employee: self.employee.id,
                        manager_id: self.employee.manager.id,
                        text: self.reportToManager
                    }, function () {
                        Notification.success('Report created with success!');
                    },function(){
                        Notification.warning('Report cannot be saved please try again');
                    });

                }, function () {
                    $log.info('Modal dismissed at: ' + new Date());
                });
            };

            self.assignTask = function (employeeId) {
                var modalInstance = $uibModal.open({
                    animation: true,
                    component: 'assignTask'
                });

                modalInstance.result.then(function (item) {
                    Task.save({
                        employee_id: employeeId,  //to the employee we clicked on
                        manager_id: self.employee.id,  //from the manager- me
                        text: item.text,
                        due_date: item.due_date
                    }, function () {
                        Notification.success('Task created with success!');
                    },function(){
                        Notification.warning('Task cannot be saved please try again');
                    });

                }, function () {
                    $log.info('Modal dismissed at: ' + new Date());
                });
            };


        }
    ]
});
