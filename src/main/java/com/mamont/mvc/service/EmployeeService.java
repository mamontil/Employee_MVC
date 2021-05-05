package com.mamont.mvc.service;

import com.mamont.mvc.entity.Employee;
import java.util.List;

public interface EmployeeService {
    public List<Employee> getAllEmployees();

    public void saveEmployee(Employee employee);

    public Employee getEmployee(int id);

    public  void deleteEmployee(int id);
}
