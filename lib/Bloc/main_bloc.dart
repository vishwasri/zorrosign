import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zorrosigntest/Bloc/HomeBloc/home_bloc.dart';
import 'package:zorrosigntest/service/employee_service.dart';

class MainBloc{
  static List<BlocProvider> allBlocs(){
    return [
      BlocProvider(create: (BuildContext context) => HomeBloc())
    ];
  }
}
