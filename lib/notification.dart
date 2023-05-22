import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  const notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(("GK Quiz"),
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(("Notifications"),
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5,),
          ],
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back_ios_new,color: Colors.red,size: 40)
        ),
        actions: [
          Padding(padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.delete,color: Colors.red,size: 40),
          )
        ],
      ),
      body: Center(
        child: Text("You have no notification",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
    );
  }
}
