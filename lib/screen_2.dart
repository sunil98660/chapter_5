import 'package:flutter/material.dart';

class Screen_2 extends StatefulWidget {
  static const String id= 'screen_2';
  const Screen_2({super.key});

  @override
  State<Screen_2> createState() => _Screen_2State();
}

class _Screen_2State extends State<Screen_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Navigation Drawer')),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbc.co.uk%2Fnews%2Fin-pictures-56211135&psig=AOvVaw0cabS6CQy5uN7pQYAIl3q0&ust=1691463666298000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCIDM16zHyYADFQAAAAAdAAAAABAE'),
                    ),
                    title: Text('sunil'),
                    onTap: (){
                      Navigator.pushNamed(context, Screen_2.id);
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}
