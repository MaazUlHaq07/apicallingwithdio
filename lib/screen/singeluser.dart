// @dart=2.9
import 'package:apicalling/giohttp_service.dart';
import 'package:apicalling/model/singeluser.dart';
import 'package:apicalling/model/user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class Singeluser extends StatefulWidget {
  @override
  _SingeluserState createState() => _SingeluserState();
}

class _SingeluserState extends State<Singeluser> {

  HttpService http;
  SingleUser singeluserResponse;
  User user;

 bool isLoading= false;

  Future getUser()async{
       Response response;
       try {
         response= await http.getRequest("https://reqres.in/api/users/2");
         isLoading= false;
         if(response.statusCode == 200){

           setState(() {
             singeluserResponse = SingleUser.fromJson(response.data);
           });
         }else{
           print("Error");
         }

       } on Exception catch (e) {
         isLoading = false;
         print(e);
       }
  }

  @override
  void initState() {

    super.initState();

    getUser();

    http = HttpService();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),

      ),
      // body: isLoading ? Center(child: CircularProgressIndicator()),
      body: isLoading ? Center(child: CircularProgressIndicator(),)  :
     user != null ?  Container(
        width: double.infinity,
          child: Column(
            children: [
              Image.network(user.avatar),
              Container(height: 16,),
              Text("Hello, ${user.firstName}")
            ],
          ),
          
      ):Center(
       child: Text("No user object"),
     )
    );
  }
}
