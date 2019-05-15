map = ['Production', 'Research & Development', 'Purchasing', 'Marketing', 'Finance', 'Management']

map.each{ |name| Department.create(department_name: name) }
