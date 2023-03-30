import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async{
    var response = await http.get(Uri.parse("http://worldtimeapi.org/api/ip"));
    Map data = jsonDecode(response.body);
    String datetime = data['utc_datetime'];
    String offset_hr = data['utc_offset'].substring(1,3);
        String offset_min = data['utc_offset'].substring(4,6);
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset_hr), minutes: int.parse(offset_min)));
    print(now);  
  }

  @override
  void initState(){
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Loading Screen"),
    );
  }
}