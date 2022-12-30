import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:projek_uas/AddTodo.dart';
import 'package:projek_uas/TodoCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          'Today`s Schedule',
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {}, 
                icon: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              SizedBox(width: 25,),
          ],
          bottom: PreferredSize(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left : 22),
                child: Text(
                  'Monday 02',
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                      ),
                    ),
              ),
            ),
            preferredSize: Size.fromHeight(35),
              ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black87,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 32, color: Colors.white,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
           icon: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder)=> AddTodoPage()));
            },
             child: Container(
              height: 52,
              width: 52,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [ Colors.indigoAccent, Colors.purple])
              ),
              child: Icon(Icons.add, size: 32, color: Colors.white),
              ),
           ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 32, color: Colors.white,),
            label: 'Settings',
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              TodoCard(
                title: 'Solat Shubuh', 
                iconData: Icons.mosque, 
                iconColor: Colors.blue, 
                time: '5 AM', 
                check: true, 
                iconBgColor: Colors.white),
                SizedBox(
                  height: 10,
                ),
                TodoCard(
                title: 'Makan Siang', 
                iconData: Icons.lunch_dining, 
                iconColor: Colors.green, 
                time: '12 PM', 
                check: true, 
                iconBgColor: Colors.white),
                SizedBox(
                  height: 10,
                ),
                TodoCard(
                title: 'Tugas Mobile Programming', 
                iconData: Icons.alarm, 
                iconColor: Colors.red, 
                time: '12 AM', 
                check: false, 
                iconBgColor: Colors.white),
                SizedBox(
                  height: 10,
                ),
                TodoCard(
                title: 'Magrib', 
                iconData: Icons.mosque, 
                iconColor: Colors.blue, 
                time: '18 PM', 
                check: false, 
                iconBgColor: Colors.white),
                SizedBox(
                  height: 10,
                ),
            ],
              ),
            ), 
          ),
    );
  }
}