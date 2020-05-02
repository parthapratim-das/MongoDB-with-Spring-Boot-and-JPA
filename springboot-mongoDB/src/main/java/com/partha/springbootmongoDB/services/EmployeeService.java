package com.partha.springbootmongoDB.services;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import com.partha.models.Employee;
import com.partha.springbootmongoDB.repositories.EmployeeRepository;

@ComponentScan
@Configuration
public class EmployeeService {
	
	 @Autowired
	 EmployeeRepository employeeRepository;

	public void createEmployee(List<Employee> emp) {
		employeeRepository.saveAll(emp);
	}

	public Collection<Employee> getAllEmployees() {
		return employeeRepository.findAll();
	}

	public Optional<Employee> findEmployeeById(int id) {
		return employeeRepository.findById(id);
	}

	public void updateEmployee(Employee e) {
		employeeRepository.save(e);
	}

	public void deleteEmployeeById(int id) {
		employeeRepository.deleteById(id);
	}

	public void deleteAllEmployees() {
		employeeRepository.deleteAll();
	}

}
