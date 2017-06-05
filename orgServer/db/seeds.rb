# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Employee.create!([{first_name: 'Big', last_name: 'Boss', position: 'big manager', type: Manager},
                  {first_name: 'Avi', last_name: 'Levin', position: 'team 1 manager', type: Manager, manager_id: 1},
                  {first_name: 'Beni', last_name: 'Levy', position: 'team 2 manager', type: Manager, manager_id: 1},
                  {first_name: 'Shula', last_name: 'Levin', position: 'team 3 manager', type: Manager, manager_id: 1},
                  {first_name: 'Dani', last_name: 'Shovevani', position: 'team 1 developer', type: Employee, manager_id: 2},
                  {first_name: 'Dana', last_name: 'Refael', position: 'team 1 developer', type: Employee, manager_id: 2},
                  {first_name: 'Golda', last_name: 'Catelin', position: 'team 2 developer', type: Employee, manager_id: 3},
                  {first_name: 'Tuti', last_name: 'Catelin', position: 'team 2 developer', type: Employee, manager_id: 3},
                  {first_name: 'Lavi', last_name: 'Canine', position: 'team 3 developer', type: Employee, manager_id: 4},
                  {first_name: 'Loli', last_name: 'Canine', position: 'team 3 developer', type: Employee, manager_id: 4}
                 ])


Task.create!([{text: 'finish task 123', manager_id: '1', employee_id: '2', due_date: Date.tomorrow},
              {text: 'make me coffee', manager_id: '1', employee_id: '2', due_date: Date.tomorrow},
              {text: 'go home early today', manager_id: '1', employee_id: '2', due_date: Date.today}
             ])

Report.create!([{text: 'finished task 123', manager_id: '1', employee: '2'},
                {text: 'finished 2345 too', manager_id: '1', employee: '2'},
                {text: 'going home now', manager_id: '1', employee: '2'},
               ])