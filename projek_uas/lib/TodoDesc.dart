import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoDescPage extends StatefulWidget {
  const TodoDescPage({Key? key}) : super(key: key);

  @override
  State<TodoDescPage> createState() => _TodoDescPageState();
}

class _TodoDescPageState extends State<TodoDescPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff1d1e26),
            Color(0xff252041)
          ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                }, 
                icon: Icon(
                  CupertinoIcons.arrow_left,
                  color: Colors.white,
                  size: 28,
                )
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8,),
                    Text(
                      'Task Name',
                      style: TextStyle(
                        fontSize: 33,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2
                      ),
                    ),
                    SizedBox(height: 25,),
                    label('Task title'),
                    SizedBox(height: 12,),
                    title(),
                    SizedBox(height: 25,),
                    label('Description'),
                    SizedBox(height: 12,),
                    description(),
                    SizedBox( height: 25,),
                    ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget description(){
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xff2a2e3d),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        style: TextStyle(
          color: Colors.grey,
          fontSize: 17,
        ),
        maxLength: null,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Description',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),
          contentPadding: EdgeInsets.only(
            left: 20,
            right: 20,
          )
        ),
      ),
    );
  }
 
  Widget title(){
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xff2a2e3d),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        style: TextStyle(
          color: Colors.grey,
          fontSize: 17,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Task title',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),
          contentPadding: EdgeInsets.only(
            left: 20,
            right: 20,
          )
        ),
      ),
    );
  }
  Widget label(String label){
    return Text(
      label,
      style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 16.5,
      letterSpacing: 0.2
      ));
  }
}