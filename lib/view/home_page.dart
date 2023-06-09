import 'package:flutter/material.dart';
import 'package:zorrosigntest/Bloc/HomeBloc/home_bloc.dart';
import 'package:zorrosigntest/Bloc/HomeBloc/home_event.dart';
import 'package:zorrosigntest/Bloc/HomeBloc/home_state.dart';
import 'package:zorrosigntest/view/employee_details_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    context.read<HomeBloc>().add(GetAllEmployeesEvent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"),),
      body: BlocBuilder<HomeBloc,HomeState>(
        builder: (context,state){
          if(state is HomeLoadingState){
            return const Center(child: CircularProgressIndicator());
          }
          if(state is HomeSuccessState){
            return Container(child: ListView.builder(
              itemCount: state.employees.length,
                itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EmployeeDetailsPage(state.employees[index])),);
                },
                child: ListTile(
                  title: Text(state.employees[index].preferredFullName),
                  subtitle: Text(state.employees[index].jobTitleName),
                  leading: Icon(Icons.supervised_user_circle,size: 20,),
                ),
              );
            }),);
          }
          if(state is HomeErrorState){
            return Container(child: Text(state.error),);
          }
          return Container();
        },
      ),

    );
  }
}
