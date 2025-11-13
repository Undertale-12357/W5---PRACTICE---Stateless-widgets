import "package:flutter/material.dart";

class HobbyCard extends StatelessWidget{
  String title;
  IconData iconData;
  Color? color;

  HobbyCard({super.key , required this.title , required this.iconData , this.color = Colors.blue});


  @override
  Widget build(BuildContext context) {
    return  Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsetsGeometry.all(20),
                        child: Icon(
                          this.iconData,
                          size: 30,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        this.title,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ), 
              );
  }
}

class Ex1 extends StatelessWidget{
  Ex1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: _appBar(),
        body: Padding(
          padding: EdgeInsetsGeometry.all(50),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                HobbyCard(title: "Travelling", iconData: Icons.travel_explore , color: Colors.green),
                HobbyCard(title: "Skating", iconData: Icons.skateboarding , color: Colors.grey),
                HobbyCard(title: "Booking", iconData: Icons.book , color: Colors.blue),
            ]            
          ),
        ),
      ),
    );
  }
}


AppBar _appBar(){
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      "My Hoobies",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    )
  );
}