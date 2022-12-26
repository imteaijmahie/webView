import 'package:flutter/material.dart';

class DrawerChanging extends StatelessWidget {
  const DrawerChanging({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text("Welcome to drawer"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 10,),

          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 10,),

          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 10,),

          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 10,),

          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
