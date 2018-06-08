import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>{
  String mainProfilePicture = 'https://avatars0.githubusercontent.com/u/9979222?s=460&v=4';
  String otherProfilePicture = 'https://pickaface.net/gallery/avatar/demo.webmaster541295de29059.png';

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Menu App"),
        backgroundColor: Colors.red,
      ),
      //AQUI DESENHA O MENU
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Junior Abranches"),
              accountEmail: new Text("juniorabranches@gmail.com"),
              currentAccountPicture: new GestureDetector(
                onTap: () => print("This is current User"),
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(mainProfilePicture),
                )
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onTap: () => print("This is current User"),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(otherProfilePicture),
                  )
                ),
              ],
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage("https://png.pngtree.com/thumb_back/fw800/back_pic/03/57/13/6957a01b9a3b5e3.jpg")
                )
              )
            ),
            new ListTile(
              title: new Text("First Page"),
              trailing: new Icon(Icons.arrow_upward),
            ),
            new ListTile(
              title: new Text("Second Page"),
              trailing: new Icon(Icons.arrow_right),
            ),        
            new Divider(),    
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.cancel),
            ),                        
          ],
        ),
      ),
      body: new Center(
        child: new Text("Data",
                   style: new TextStyle(fontSize: 35.0),      
        ),
      ),
    );
  }
}