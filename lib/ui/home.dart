
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {

  _tapButton() => debugPrint("Tapped Button !!!");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        actions: [
          IconButton(icon: Icon(Icons.email), onPressed: () => debugPrint("Email Tapped")),
          IconButton(icon: Icon(Icons.access_alarm), onPressed: _tapButton)
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.call_missed),
        onPressed: () => debugPrint("Hello") ,
      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text("First")),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text("Second")),
        BottomNavigationBarItem(icon: Icon(Icons.access_alarm), title: Text("Third")),
        BottomNavigationBarItem(icon: Icon(Icons.backup_outlined), title: Text("Fourth")),
        BottomNavigationBarItem(icon: Icon(Icons.email), title: Text("Fifth")),
      ], type: BottomNavigationBarType.fixed,onTap: (int index) => debugPrint("Tapped item : $index"),),

      backgroundColor: Colors.redAccent.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton()
            // InkWell(
            //   child:Text("Tap me!",
            //       style: TextStyle(fontSize: 23.4)),
            //   onTap: () => debugPrint("Tapped..."),
            // )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(content: Text("Hello Again!"),
        backgroundColor: Colors.amberAccent.shade700,
        );
        
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(8.0)
        ),

        child: Text("Button"),
      )
    );
  }
}



class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Text("Hello Flutter!", textDirection: TextDirection.ltr,), // Text
    // );

    return Material(
      color: Colors.deepOrange,
      child: Center(
          child: Text(
              "Hello Flutter!",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 23.4,
                  fontStyle: FontStyle.italic
              )
          )),
    );
  }
}
