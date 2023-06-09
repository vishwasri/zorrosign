

import 'package:flutter_bloc/flutter_bloc.dart';

import 'employee_details_event.dart';
import 'employee_details_state.dart';

class EmployeeDetailsBloc extends Bloc<EmployeeDetailsEvent, EmployeeDetailsState> {

  EmployeeDetailsBloc():super(EmployeeDetailsLoadingState());

  @override
  Stream<EmployeeDetailsState> mapEventToState(EmployeeDetailsEvent event) async* {

  }
}