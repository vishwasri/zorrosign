

import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zorrosigntest/model/employee.dart';
import 'package:zorrosigntest/service/employee_service.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  EmployeeService employeeService = EmployeeService();
  HomeBloc():super(HomeLoadingState());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
      if(event is GetAllEmployeesEvent){
        List<Employee> employees = await employeeService.getAllEmployees();
        log(employees.length.toString());
        if(employees.isNotEmpty){
          yield HomeSuccessState(employees);
        } else {
          yield HomeErrorState("Something went wrong");
        }

      }
  }
}