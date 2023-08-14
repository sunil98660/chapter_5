
import 'package:chapter_5/screen_2.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Navigation Drawer')),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent
              ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbc.co.uk%2Fnews%2Fin-pictures-56211135&psig=AOvVaw0cabS6CQy5uN7pQYAIl3q0&ust=1691463666298000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCIDM16zHyYADFQAAAAAdAAAAABAE'),
                ),
                accountName: Text('sunil'),
                accountEmail: Text('sunil@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('page 1'),
              onTap: (){
                Navigator.pushNamed(context, Screen_2.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('page 2'),
              onTap: (){
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log out'),
              onTap: (){
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: (){
                Navigator.pushNamed(context, Screen_2.id);
                //Navigator.push(
                 // context, MaterialPageRoute(builder: (context) => Screen_2()),
              //  );
              },
              child: Text('Screen 1'),
            ),
          ),
        ],
      ),
    );
  }
}
