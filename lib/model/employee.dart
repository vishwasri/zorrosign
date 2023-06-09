import 'dart:convert';

List<Employee> employeeFromJson(String str) => List<Employee>.from(json.decode(str).map((x) => Employee.fromJson(x)));

String employeeToJson(List<Employee> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Employee {
  int userId;
  String jobTitleName;
  String firstName;
  String lastName;
  String preferredFullName;
  String employeeCode;
  String region;
  String phoneNumber;
  String emailAddress;

  Employee({
    required this.userId,
    required this.jobTitleName,
    required this.firstName,
    required this.lastName,
    required this.preferredFullName,
    required this.employeeCode,
    required this.region,
    required this.phoneNumber,
    required this.emailAddress,
  });

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
    userId: json["userId"],
    jobTitleName: json["jobTitleName"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    preferredFullName: json["preferredFullName"],
    employeeCode: json["employeeCode"],
    region: json["region"],
    phoneNumber: json["phoneNumber"],
    emailAddress: json["emailAddress"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "jobTitleName": jobTitleName,
    "firstName": firstName,
    "lastName": lastName,
    "preferredFullName": preferredFullName,
    "employeeCode": employeeCode,
    "region": region,
    "phoneNumber": phoneNumber,
    "emailAddress": emailAddress,
  };
}

List<Employee> employees =  [
Employee(userId: 233, jobTitleName: "Program Directory", firstName: "Tom1", lastName: "Hanks", preferredFullName: "Tom Hanks 1", employeeCode: "E3", region: "CA", phoneNumber: "408-2222222", emailAddress: "tomhanks@gmail.com"),
Employee(userId: 233, jobTitleName: "Program Directory", firstName: "Tom2", lastName: "Hanks", preferredFullName: "Tom Hanks 22", employeeCode: "E3", region: "CA", phoneNumber: "408-2222222", emailAddress: "tomhanks@gmail.com"),
Employee(userId: 233, jobTitleName: "Program Directory", firstName: "Tom3", lastName: "Hanks", preferredFullName: "Tom Hanks 3", employeeCode: "E3", region: "CA", phoneNumber: "408-2222222", emailAddress: "tomhanks@gmail.com"),
Employee(userId: 233, jobTitleName: "Program Directory", firstName: "Tom4", lastName: "Hanks", preferredFullName: "Tom Hanks 4", employeeCode: "E3", region: "CA", phoneNumber: "408-2222222", emailAddress: "tomhanks@gmail.com"),
Employee(userId: 233, jobTitleName: "Program Directory", firstName: "Tom5", lastName: "Hanks", preferredFullName: "Tom Hanks 5", employeeCode: "E3", region: "CA", phoneNumber: "408-2222222", emailAddress: "tomhanks@gmail.com"),
Employee(userId: 233, jobTitleName: "Program Directory", firstName: "Tom6", lastName: "Hanks", preferredFullName: "Tom Hanks 6", employeeCode: "E3", region: "CA", phoneNumber: "408-2222222", emailAddress: "tomhanks@gmail.com"),
Employee(userId: 233, jobTitleName: "Program Directory", firstName: "Tom7", lastName: "Hanks", preferredFullName: "Tom Hanks 7", employeeCode: "E3", region: "CA", phoneNumber: "408-2222222", emailAddress: "tomhanks@gmail.com"),
Employee(userId: 233, jobTitleName: "Program Directory", firstName: "Tom8", lastName: "Hanks", preferredFullName: "Tom Hanks 8", employeeCode: "E3", region: "CA", phoneNumber: "408-2222222", emailAddress: "tomhanks@gmail.com"),
Employee(userId: 233, jobTitleName: "Program Directory", firstName: "Tom8", lastName: "Hanks", preferredFullName: "Tom Hanks 8", employeeCode: "E3", region: "CA", phoneNumber: "408-2222222", emailAddress: "tomhanks@gmail.com"),
Employee(userId: 233, jobTitleName: "Program Directory", firstName: "Tom8", lastName: "Hanks", preferredFullName: "Tom Hanks 8", employeeCode: "E3", region: "CA", phoneNumber: "408-2222222", emailAddress: "tomhanks@gmail.com"),
Employee(userId: 233, jobTitleName: "Program Directory", firstName: "Tom8", lastName: "Hanks", preferredFullName: "Tom Hanks 8", employeeCode: "E3", region: "CA", phoneNumber: "408-2222222", emailAddress: "tomhanks@gmail.com"),
Employee(userId: 233, jobTitleName: "Program Directory", firstName: "Tom8", lastName: "Hanks", preferredFullName: "Tom Hanks 8", employeeCode: "E3", region: "CA", phoneNumber: "408-2222222", emailAddress: "tomhanks@gmail.com"),
Employee(userId: 233, jobTitleName: "Program Directory", firstName: "Tom8", lastName: "Hanks", preferredFullName: "Tom Hanks 8", employeeCode: "E3", region: "CA", phoneNumber: "408-2222222", emailAddress: "tomhanks@gmail.com"),
];
List<Employee> allEmployees(){
return employees;
}




