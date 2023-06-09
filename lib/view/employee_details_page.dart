import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zorrosigntest/model/employee.dart';
import 'package:zorrosigntest/view/widgets/helper_widets.dart';

class EmployeeDetailsPage extends StatefulWidget {
  static const routeName = "/employee-details";
  final Employee employee;

  const EmployeeDetailsPage(this.employee, {Key? key}) : super(key: key);
  @override
  _EmployeeDetailsPageState createState() => _EmployeeDetailsPageState();
}

class _EmployeeDetailsPageState extends State<EmployeeDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Employee Details"),),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Full Name",style: TextStyle(fontSize: 15),),
          Text(widget.employee.preferredFullName,style: TextStyle(fontSize: 20),),
          verticalSpacer(),
          Text("First Name",style: TextStyle(fontSize: 15),),
          Text(widget.employee.firstName,style: TextStyle(fontSize: 20),),
            verticalSpacer(),
          Text("Last Name",style: TextStyle(fontSize: 15),),
          Text(widget.employee.lastName,style: TextStyle(fontSize: 20),),
            verticalSpacer(),
          Text("Job Title",style: TextStyle(fontSize: 15),),
          Text(widget.employee.jobTitleName,style: TextStyle(fontSize: 20),),
            verticalSpacer(),
          Text("Phone Number",style: TextStyle(fontSize: 15),),
          Text(widget.employee.phoneNumber,style: TextStyle(fontSize: 20),),
        ],),
      ),
    );
  }
}
