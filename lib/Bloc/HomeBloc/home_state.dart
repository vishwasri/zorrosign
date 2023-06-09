import 'package:zorrosigntest/model/employee.dart';

abstract class HomeState {}

class HomeLoadingState extends HomeState{}
class HomeSuccessState extends HomeState{
  final List<Employee> employees;
  HomeSuccessState(this.employees);
}
class HomeErrorState extends HomeState{
  final String error;
  HomeErrorState(this.error);
}