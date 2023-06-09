import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zorrosigntest/Bloc/main_bloc.dart';
import 'package:zorrosigntest/view/employee_details_page.dart';
import 'package:zorrosigntest/view/home_page.dart';

import 'Bloc/HomeBloc/home_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => HomeBloc())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.routeName,
        routes: {
          HomePage.routeName : (context) => HomePage(),
//          EmployeeDetailsPage.routeName : (context) => EmployeeDetailsPage(ModalRoute.of(context).settings.arguments),
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
