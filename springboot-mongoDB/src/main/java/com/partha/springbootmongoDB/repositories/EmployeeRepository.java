package com.partha.springbootmongoDB.repositories;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.mongodb.repository.MongoRepository;

import com.partha.models.Employee;

@ComponentScan
public interface EmployeeRepository extends MongoRepository<Employee, Integer>{

}
