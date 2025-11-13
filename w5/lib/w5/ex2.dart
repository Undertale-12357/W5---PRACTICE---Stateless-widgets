import "package:flutter/material.dart";

class Ex2 extends StatelessWidget{
  const Ex2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom buttons"),
          backgroundColor: Colors.white60,
        ),
        body: Center(
          child: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,  
                  child: CustomButton(label: "Submit", icon: Icons.abc_sharp),
                ),
                SizedBox(
                  width: double.infinity,  
                  child: CustomButton(label: "Time", icon: Icons.time_to_leave_outlined , buttonType: "Secondary",)
                ),
                SizedBox(
                  width: double.infinity,  
                  child: CustomButton(label: "Turn In", icon: Icons.account_balance_wallet , buttonType: null,)
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget{
  String label;
  String? buttonType;
  String? iconPosition;
  IconData icon;

  CustomButton({required this.label , required this.icon, super.key, this.buttonType = "primary" , this.iconPosition = "left"});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: buttonType == null? null : (){}, 
      label: Text(label, style: TextStyle(fontSize: 30 , color: Colors.black , fontWeight: FontWeight.bold),),
      icon: Icon(icon , size: 32),
      iconAlignment: iconPosition == "left" ? IconAlignment.start : IconAlignment.end,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonType == "primary" ? Colors.blue : Colors.green,
      ),
    );
  }
  
}