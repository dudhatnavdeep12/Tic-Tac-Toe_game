import 'package:flutter/material.dart';

class First extends StatefulWidget {
  String p2;
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1555679427-1f6dfcce943b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDkyfHxiYWNrZ3JvdW5kJTIwZm9yJTIwZ2FtaW5nJTIwYXBwbGljYXRpb24lMjBpbiUyMGZ1bGwlMjBzaXplfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Image(
                      image: AssetImage('assets/images/close.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    child: Image(
                      image: AssetImage('assets/images/circle.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "TIC-TAC-TOE GAME",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                "Presented By:- JAY KHODIYAR DEVELOPERS",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Text(
                'Choose your player mode',
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    widget.p2 = "computer";
                  });
                  Navigator.of(context)
                      .pushNamed('/side', arguments: widget.p2);
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 30,
                        spreadRadius: 10,
                        offset: Offset(5, 5),
                      ),
                    ],
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Play With Computer',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    widget.p2 = "player2";
                  });
                  Navigator.of(context)
                      .pushNamed('/side', arguments: widget.p2);
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 30,
                        spreadRadius: 10,
                        offset: Offset(5, 5),
                      ),
                    ],
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Play With friend',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
