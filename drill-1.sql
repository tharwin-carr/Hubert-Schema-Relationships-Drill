-- Drill #1
select
  d.dept_name as department,
  e.emp_name as Employee_Name
from
  department d
inner join
  employee e
on
  e.department = d.id
where d.dept_name = 'Sales'
group by d.id, e.emp_name, d.dept_name;

-- Drill #2
select
  e.emp_name as Employee_Name,
  p.project_name as Project
from
  employee as e
join
  employee_project ep
on 
  e.id = ep.emp_id
join
  project p
on 
  ep.project_id = p.id
where p.project_name = 'Plan christmas party';

-- Drill #3
select
  e.emp_name as Employee,
  p.project_name as Project
from
  employee as e
join
  department as d
on
  d.id = e.id
join
  employee_project ep
on
  e.id = ep.emp_id
join
  project p
on 
  ep.project_id = p.id
where d.dept_name = 'Warehouse';

-- Drill #4
select
  d.dept_name as department,
  p.project_name as project,
  e.emp_name as employee
from
  employee as e
join
  department as d
on
  d.id = e.id
join
  employee_project ep
on
  e.id = ep.emp_id
join
  project p
on
  ep.project_id = p.id
where d.dept_name = 'Sales';

-- Drill #5
select
  e.emp_name as Manager,
  p.project_name as project
from
  project p
join
  employee_project ep
on
  p.id = ep.project_id
join
  employee e
on
  e.id = ep.emp_id
join
  department d
on
  e.id = d.manager
where p.project_name = 'Watch paint dry';