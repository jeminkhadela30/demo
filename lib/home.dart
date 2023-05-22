import 'package:flutter/material.dart';
import 'package:quiz_app/lesson.dart';
import 'package:quiz_app/notification.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
             Text(("Enrich Your knowledge"),
             style: TextStyle(
               fontSize: 15,
               color: Colors.black,
             ),
             ),
             SizedBox(height: 5,),
           ],
         ),
         leading: Icon(Icons.app_registration,color: Colors.red,size: 40),
         actions: [
           Padding(padding: EdgeInsets.only(right: 15),
           child: InkWell(
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => notification(),));
             },
               child: Icon(Icons.doorbell,color: Colors.red,size: 40)
           ),
           )
         ],

       ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => lesson(),));
            },
            child: Container(
              height: 70,
              width: double.infinity,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(//box shadow decoration ma ave
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                  boxShadow: [BoxShadow(//aa box shadow ma color n blurradius apvathi container upsi jai
                    color: Colors.grey,
                    blurRadius: 50.0,
                  ),]
              ),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.library_books_outlined,color: Colors.blueAccent,size: 50,),
                  SizedBox(width: 10,),
                  Text("Lesson to Study",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            width: double.infinity,
            margin: EdgeInsets.all(15),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 50.0,
                ),]
            ),
            child: Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.pending_actions_sharp,color: Colors.blueAccent,size: 50,),
                SizedBox(width: 10,),
                Text("Practice",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                height: 70,
                width: 160,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 50.0,
                    ),]
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon((Icons.terminal_sharp),color: Colors.blue,size: 40,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Text("Take a Test",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 70,
                width: 160,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 50.0,
                    ),]
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon((Icons.quiz),color: Colors.blue,size: 40,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Text("Country Quiz",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 100,
            width: double.infinity,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 50.0,
                ),]
            ),
            child: Row(
              children: [
                SizedBox(width: 30,),
                Column(
                  children: [
                    SizedBox(height: 10,),
                    Icon(Icons.picture_as_pdf,size: 30,color: Colors.lime,),
                    SizedBox(height: 5,),
                    Expanded(
                      child: Text("PDF Book \nStore",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                        ),),
                    )
                  ],
                ),
                SizedBox(width: 30,),
                Column(
                  children: [
                    SizedBox(height: 10,),
                    Icon(Icons.auto_delete_sharp,size: 30,color: Colors.lime,),
                    SizedBox(height: 5,),
                    Expanded(
                      child: Text("Remove \nAds",
                        style: TextStyle(
                        color: Colors.black,
                          fontSize: 17
                      ),),
                    )
                  ],
                ),
                SizedBox(width: 30,),
                Column(
                  children: [
                    SizedBox(height: 10,),
                    Icon(Icons.share,size: 30,color: Colors.lime,),
                    SizedBox(height: 5,),
                    Expanded(
                      child: Text("Share \nApp",
                        style: TextStyle(
                        color: Colors.black,
                          fontSize: 17
                      ),),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
