import 'package:zorrosigntest/model/employee.dart';

class EmployeeService{
  Future<List<Employee>> getAllEmployees()async{

    return allEmployees();
  }

  Future<Employee> getEmployeeDetails(String empId)async{

    return getEmployeeDetails(empId);
  }
}