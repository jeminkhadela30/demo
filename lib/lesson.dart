import 'package:flutter/material.dart';
import 'package:quiz_app/notification.dart';
import 'package:share_plus/share_plus.dart';

class lesson extends StatefulWidget {
  lesson({Key? key}) : super(key: key);

  @override
  State<lesson> createState() => _lessonState();
}

class _lessonState extends State<lesson> {
  List gridlesson = [
    {
      'title' : 'Agriculture',
      'color' : Colors.green
    }, {
      'title' : 'Computer',
      'color' : Colors.lime
    },{
      'title' : 'Chemistry',
      'color' : Colors.orange.withOpacity(0.3)
    },{
      'title' : 'World Currencies',
      'color' : Colors.amber
    },{
      'title' : 'Historical Places',
      'color' : Colors.tealAccent
    },{
      'title' : 'National Animals',
      'color' : Colors.greenAccent
    },{
      'title' : 'Sports',
      'color' : Colors.lightGreen
    },{
      'title' : 'National Games',
      'color' : Colors.orangeAccent
    },{
      'title' : 'Electronic',
      'color' : Colors.purpleAccent
    },{
      'title' : 'Human Body',
      'color' : Colors.cyan
    },

  ];

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
            Text(("Lesson to Study"),
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
      ),
      body: GridView.builder(
        shrinkWrap: true,
          itemCount: gridlesson.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                switch(index){
                  case 0:
                    Navigator.push(context, MaterialPageRoute(builder: (context) => agriculture(),));
                  break;
                  case 1:
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Computer(),));
                  break;
                  case 2:
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Chemistry(),));
                  break;
                  case 3:
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Currencies(),));
                  break;
                  case 4:
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HistoricalPlaces(),));
                  break;
                  case 5:
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NationalAnimals(),));
                  break;
                  case 6:
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Sports(),));
                  break;
                  case 7:
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NationalGames(),));
                  break;
                  case 8:
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Electronic(),));
                  break;
                  case 9:
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HumanBody(),));
                  break;
                }
              },
              child: Card(
                margin: EdgeInsets.all(10),
                color: (gridlesson[index]['color']),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        child: Icon(Icons.currency_exchange,color: Colors.white,size: 40,)),
                    Text((gridlesson[index]['title']),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    )
                  ],
                ),
              ),
            );

          },)
    );
  }
}


class agriculture extends StatelessWidget {
   agriculture({Key? key}) : super(key: key);

   List qagriculture = [
     {
       'que' : '1) In which month zaid crops are sown and harvested?',
       'ans' : 'Answer :March to june'
     }, {
       'que' : '2) Which gas is released from paddy fields?',
       'ans' : 'Answer : CH4'
     },{
       'que' : '3) Neelum is a variety of which fruit?',
       'ans' : 'Answer : Mango'
     },{
       'que' : '4) Ratna is a variety of ______?',
       'ans' : 'Answer : Rice'
     },{
       'que' : '5) What is the symbol of iron?',
       'ans' : 'Answer : Fe'
     },{
       'que' : '6) Blue colour tag is issued for?',
       'ans' : 'Answer : Seed agency'
     },{
       'que' : '7) What order does beetle belong to?',
       'ans' : 'Answer : Coleoptera'
     },{
       'que' : '8) Chanchal is a variety of _____?',
       'ans' : 'Answer : Coleoptera'
     },{
       'que' : '9) What does the pink bollworm do?',
       'ans' : 'Answer : Cotton'
     },{
       'que' : '10) Red delicious is a variety of which fruit?',
       'ans' : 'Answer : Apple'
     },{
       'que' : '11) Which crop is also known as a "Wonder Crop"?',
       'ans' : 'Answer : Soyabean'
     },{
       'que' : '12) Plants growing in saline soil are called?',
       'ans' : 'Answer : Halophytes'
     },{
       'que' : '13) BT seed is associated with _____?',
       'ans' : 'Answer : Cotton'
     },{
       'que' : '14) Which type of crop tea is?',
       'ans' : 'Answer : Plantation Crop'
     },{
       'que' : '15) The eyes of potato are useful for _____?',
       'ans' : 'Answer : Vegetative Propagation'
     },
   ];

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
            Text(("Learn about Agriculture"),
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
          child:  InkWell(
            onTap: () {
              Share.share("https://www.cricbuzz.com/profiles/1413/virat-kohli");//ama aa list nej share karta sikhvanu che
            },
              child: Icon(Icons.share,color: Colors.red,size: 40)),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: qagriculture.length,
        shrinkWrap: true,
        itemBuilder:
            (context, index) {
        return Card(
          margin: EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(qagriculture[index]['que'],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(qagriculture[index]['ans'],
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
                ),
              )
            ],
          ),
        );
      },),
    );
  }
}

class Computer extends StatelessWidget {
  Computer({Key? key}) : super(key: key);

  List qComputer = [
    {
      'que' : '1) Eight bits make up a _____?',
      'ans' : 'Answer : Byte'
    }, {
      'que' : '2) Which stores more data than a DVD?',
      'ans' : 'Answer : Blue Ray Disk'
    },{
      'que' : '3) The two kinds of main memory are _____?',
      'ans' : 'Answer : RAM and ROM'
    },{
      'que' : '4) MS-Word is an example of _____?',
      'ans' : 'Answer : Application Software'
    },{
      'que' : '5) Computer moniter is also known as _____?',
      'ans' : 'Answer : VDU'
    },{
      'que' : '6) One kilobyte is equal to _____?',
      'ans' : 'Answer : 1024bytes'
    },{
      'que' : '7) "ALU" stands for?',
      'ans' : 'Answer : Arithmetic Logic Unit'
    },{
      'que' : '8) What language computer is derived from?',
      'ans' : 'Answer : Latin'
    },{
      'que' : '9) Who is the father of computer science?',
      'ans' : 'Answer : Alan Turing'
    },{
      'que' : '10) Junk e-mail is also called _____?',
      'ans' : 'Answer : Spam'
    },{
      'que' : '11) "WAN" stands for _____?',
      'ans' : 'Answer : Wide Area Network'
    },{
      'que' : '12) First page of website is known as _____?',
      'ans' : 'Answer : Homepage'
    },{
      'que' : '13) Shell is the exclusive feature of ______?',
      'ans' : 'Answer : UNIX'
    },{
      'que' : '14) When was C language devloped?',
      'ans' : 'Answer : 1970s'
    },{
      'que' : '15) A desktop computer is also known as _____?',
      'ans' : 'Answer : PC'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },),
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
            Text(("Learn about Computer"),
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
            child:  InkWell(
                onTap: () {
                  Share.share("https://www.cricbuzz.com/profiles/1413/virat-kohli");//ama aa list nej share karta sikhvanu che
                },
                child: Icon(Icons.share,color: Colors.red,size: 40)),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: qComputer.length,
        shrinkWrap: true,
        itemBuilder:
            (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(qComputer[index]['que'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(qComputer[index]['ans'],
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          );
        },),
    );
  }
}

class Chemistry extends StatelessWidget {
  Chemistry({Key? key}) : super(key: key);

  List qChemistry = [
    {
      'que' : '1) Which synthetic fibre is known as artificial silk?',
      'ans' : 'Answer : Rayon'
    }, {
      'que' : '2) Nail polish remover contains _____?',
      'ans' : 'Answer : Acetone'
    },{
      'que' : '3) What is the heaviest metal?',
      'ans' : 'Answer : Osmium'
    },{
      'que' : '4) Bleaching action of chlorine is by _____?',
      'ans' : 'Answer : Oxidation'
    },{
      'que' : '5) pH value of value of water is _____?',
      'ans' : 'Answer : 7'
    },{
      'que' : '6) pH value of value of water is _____?',
      'ans' : 'Answer : 7.4'
    },{
      'que' : '7) Bauxite is an ore of _____?',
      'ans' : 'Answer : Aluminium'
    },{
      'que' : '8) Washing soda is _____?',
      'ans' : 'Answer : Sodium Carbonate'
    },{
      'que' : '9) Air contains maximum amount of _____?',
      'ans' : 'Answer : Nitrogen'
    },{
      'que' : '10) The element used in lead pencils is _____?',
      'ans' : 'Answer : Carbon'
    },{
      'que' : '11) Oil of vitriol is _____?',
      'ans' : 'Answer : Sulfuric Acid'
    },{
      'que' : '12) The acid present in lemon is _____?',
      'ans' : 'Answer : Citric Acid'
    },{
      'que' : '13) Normal valency of nitrogen is _____?',
      'ans' : 'Answer : 3'
    },{
      'que' : '14) DDT was applied as an _____?',
      'ans' : 'Answer : Insecticide'
    },{
      'que' : '15) What type of drug is Aspirin?',
      'ans' : 'Answer : Salicylates'
    },
  ];

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
            Text(("Learn about Chemistry"),
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
            child:  InkWell(
                onTap: () {
                  Share.share("https://www.cricbuzz.com/profiles/1413/virat-kohli");//ama aa list nej share karta sikhvanu che
                },
                child: Icon(Icons.share,color: Colors.red,size: 40)),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: qChemistry.length,
        shrinkWrap: true,
        itemBuilder:
            (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(qChemistry[index]['que'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(qChemistry[index]['ans'],
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          );
        },),
    );
  }
}

class Currencies extends StatelessWidget {
  Currencies({Key? key}) : super(key: key);

  List qCurrencies = [
    {
      'que' : '1) What is the currency of India?',
      'ans' : 'Answer : Rupees'
    }, {
      'que' : '2) What is the currency of Akrotiri?',
      'ans' : 'Answer : Euro'
    },{
      'que' : '3) What is the currency of Andorra country?',
      'ans' : 'Answer : Euro'
    },{
      'que' : '4) Dram is the currency of which country?',
      'ans' : 'Answer : Armenia'
    },{
      'que' : '5) What is the currency of Azerbaijan?',
      'ans' : 'Answer : Azerbaijan Manat'
    },{
      'que' : '6) What is the official currency of Belarus?',
      'ans' : 'Answer : Belrusian ruble'
    },{
      'que' : '7) What is the official currency of Belgium?',
      'ans' : 'Answer : Euro'
    },{
      'que' : '8) What is the currency of Bulgaria?',
      'ans' : 'Answer : Lev'
    },{
      'que' : '9) What is the currency of Croatia?',
      'ans' : 'Answer : Croatia Kuna'
    },{
      'que' : '10) What is the currency of Czechia?',
      'ans' : 'Answer : Czech Koruna'
    },{
      'que' : '11) What is the currency of Faroe Islands?',
      'ans' : 'Answer : Faroese Krona'
    },{
      'que' : '12) What is the currency of Finland?',
      'ans' : 'Answer : Euro'
    },{
      'que' : '13) What is the currency of Germany?',
      'ans' : 'Answer : Euro'
    },{
      'que' : '14) What is the currency of Greece?',
      'ans' : 'Answer : Euro'
    },{
      'que' : '15) What is the currency of Ireland?',
      'ans' : 'Answer : Euro'
    },
  ];

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
            Text(("Learn about Currencies"),
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
            child:  InkWell(
                onTap: () {
                  Share.share("https://www.cricbuzz.com/profiles/1413/virat-kohli");//ama aa list nej share karta sikhvanu che
                },
                child: Icon(Icons.share,color: Colors.red,size: 40)),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: qCurrencies.length,
        shrinkWrap: true,
        itemBuilder:
            (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(qCurrencies[index]['que'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(qCurrencies[index]['ans'],
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          );
        },),
    );
  }
}

class HistoricalPlaces extends StatelessWidget {
  HistoricalPlaces({Key? key}) : super(key: key);

  List qHistoricalPlaces = [
    {
      'que' : '1) When was Nicholas Cage born?',
      'ans' : 'Answer : January 7,1964'
    }, {
      'que' : '2) Where was Bill Cody born?',
      'ans' : 'Answer : USA'
    },{
      'que' : '3) In which year did Charlie harper die?',
      'ans' : 'Answer : 2011'
    },{
      'que' : '4) What is Thomas edisons middle name?',
      'ans' : 'Answer : Alva'
    },{
      'que' : '5) What does "Stalin" mean?',
      'ans' : 'Answer : Man of steel'
    },{
      'que' : '6) What is Steve jobs full name?',
      'ans' : 'Answer : stevan Paul Jobs'
    },{
      'que' : '7) Who was Martin Luther king ,jr.s wife?',
      'ans' : 'Answer : Coretta Scott'
    },{
      'que' : '8) Who was the leader of the bolsheviks?',
      'ans' : 'Answer : Vladimir Lenin'
    },{
      'que' : '9) Whose dughter was Indira gandhi ?',
      'ans' : 'Answer : Jawaharlal Nehru'
    },{
      'que' : '10) Who was the first roman emperor?',
      'ans' : 'Answer : Augustus'
    },{
      'que' : '11) Who wrote the book oliver "Oliver Twist"?',
      'ans' : 'Answer : Charles Dickens'
    },{
      'que' : '12) Who is the father of geometry?',
      'ans' : 'Answer : Euclid'
    },{
      'que' : '13) Who was known as Iron man of India?',
      'ans' : 'Answer : Sardar Patel'
    },{
      'que' : '14) Jaimini Roy was famous for _____?',
      'ans' : 'Answer : Painter'
    },{
      'que' : '15) Who is called desert fox?',
      'ans' : 'Answer : Gen.Rommel'
    },
  ];

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
            Text(("Learn about Historical Places"),
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
            child:  InkWell(
                onTap: () {
                  Share.share("https://www.cricbuzz.com/profiles/1413/virat-kohli");//ama aa list nej share karta sikhvanu che
                },
                child: Icon(Icons.share,color: Colors.red,size: 40)),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: qHistoricalPlaces.length,
        shrinkWrap: true,
        itemBuilder:
            (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(qHistoricalPlaces[index]['que'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(qHistoricalPlaces[index]['ans'],
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          );
        },),
    );
  }
}

class NationalAnimals extends StatelessWidget {
  NationalAnimals({Key? key}) : super(key: key);

  List qNationalAnimals = [
    {
      'que' : '1) What is the national animal of U.S.?',
      'ans' : 'Answer : American bison'
    }, {
      'que' : '2) What is the national animal of U.K.?',
      'ans' : 'Answer : Lion'
    },{
      'que' : '3) What is the national animal of Italy?',
      'ans' : 'Answer : Italian Wolf'
    },{
      'que' : '4) What is the national animal of Turkey?',
      'ans' : 'Answer : Grey Wolf'
    },{
      'que' : '5) What is the national animal of Netehrland?',
      'ans' : 'Answer : Lion'
    },{
      'que' : '6) What is the national animal of India?',
      'ans' : 'Answer : Tiger'
    },{
      'que' : '7) What is the national animal of Belize?',
      'ans' : 'Answer : Bairds Taipur'
    },{
      'que' : '8) What is the national animal of Cambodia?',
      'ans' : 'Answer : Kouprey'
    },{
      'que' : '9) What is the national animal of Ethiopia?',
      'ans' : 'Answer : Lion'
    },{
      'que' : '10) What is the national animal of Russia?',
      'ans' : 'Answer : Brown Bear'
    },{
      'que' : '11) What is the national animal of Gabon"?',
      'ans' : 'Answer : Panther'
    },{
      'que' : '12) What is the national animal of Greece?',
      'ans' : 'Answer : Dolphin'
    },{
      'que' : '13) What is the national animal of Iran?',
      'ans' : 'Answer : Asian Lion'
    },{
      'que' : '14) What is the national animal of Malaysia?',
      'ans' : 'Answer : Malayan Tiger'
    },{
      'que' : '15) What is the national animal of Malta?',
      'ans' : 'Answer : Pharaoh Hound'
    },
  ];

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
            Text(("Learn about National Animals"),
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
            child:  InkWell(
                onTap: () {
                  Share.share("https://www.cricbuzz.com/profiles/1413/virat-kohli");//ama aa list nej share karta sikhvanu che
                },
                child: Icon(Icons.share,color: Colors.red,size: 40)),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: qNationalAnimals.length,
        shrinkWrap: true,
        itemBuilder:
            (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(qNationalAnimals[index]['que'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(qNationalAnimals[index]['ans'],
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          );
        },),
    );
  }
}

class Sports extends StatelessWidget {
  Sports({Key? key}) : super(key: key);

  List qSports = [
    {
      'que' : '1) Who is the world No.1 tennis player in 2021?',
      'ans' : 'Answer : Novak Djokovic'
    }, {
      'que' : '2) Who is the highest paid athlete in 2021?',
      'ans' : 'Answer : Conor McGregor'
    },{
      'que' : '3) Which sport earns most ?',
      'ans' : 'Answer : Basketball'
    },{
      'que' : '4) Who is the richest footballer in 2021?',
      'ans' : 'Answer : Faoq Bolkiah'
    },{
      'que' : '5) What is the full form of IPL?',
      'ans' : 'Answer : Indian Premier League'
    },{
      'que' : '6) Triples is a new format of _____?',
      'ans' : 'Answer : Badminton'
    },{
      'que' : '7) How many gold medals has Usain Bolt won?',
      'ans' : 'Answer : 8'
    },{
      'que' : '8) After how many years FIFA world cup is held?',
      'ans' : 'Answer : 4'
    },{
      'que' : '9) How many FIFA world cup played till now?',
      'ans' : 'Answer : 21'
    },{
      'que' : '10) Ricky Pointing is also known as what?',
      'ans' : 'Answer : Punter'
    },{
      'que' : '11) When were the first hang gliders flown?',
      'ans' : 'Answer : 1961'
    },{
      'que' : '12) Mark Waugh is commonly called what?',
      'ans' : 'Answer : Junior'
    },{
      'que' : '13) Who has scored 14000 runs in T20 cricket?',
      'ans' : 'Answer : Chris Gayle'
    },{
      'que' : '14) Koneru Humpy excels in which sports?',
      'ans' : 'Answer : Chess'
    },{
      'que' : '15) Who won the ODI world cup 2011?',
      'ans' : 'Answer : India'
    },
  ];

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
            Text(("Learn about Sports"),
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
            child:  InkWell(
                onTap: () {
                  Share.share("https://www.cricbuzz.com/profiles/1413/virat-kohli");//ama aa list nej share karta sikhvanu che
                },
                child: Icon(Icons.share,color: Colors.red,size: 40)),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: qSports.length,
        shrinkWrap: true,
        itemBuilder:
            (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(qSports[index]['que'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(qSports[index]['ans'],
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          );
        },),
    );
  }
}

class NationalGames extends StatelessWidget {
  NationalGames({Key? key}) : super(key: key);

  List qNationalGames = [
    {
      'que' : '1) Who is the world No.1 tennis player in 2021?',
      'ans' : 'Answer : Novak Djokovic'
    }, {
      'que' : '2) Who is the highest paid athlete in 2021?',
      'ans' : 'Answer : Conor McGregor'
    },{
      'que' : '3) Which sport earns most?',
      'ans' : 'Answer : Basketball'
    },{
      'que' : '4) Who is the richest footballer in 2021?',
      'ans' : 'Answer : Faoq Bolkiah'
    },{
      'que' : '5) What is the full form of IPL?',
      'ans' : 'Answer : Indian Premier League'
    },{
      'que' : '6) Triples is a new format of _____?',
      'ans' : 'Answer : Badminton'
    },{
      'que' : '7) How many gold medals has Usain Bolt won?',
      'ans' : 'Answer : 8'
    },{
      'que' : '8) After how many years FIFA world cup is held?',
      'ans' : 'Answer : 4'
    },{
      'que' : '9) How many FIFA world cup played till now?',
      'ans' : 'Answer : 21'
    },{
      'que' : '10) Ricky Pointing is also known as what?',
      'ans' : 'Answer : Punter'
    },{
      'que' : '11) When were the first hang gliders flown?',
      'ans' : 'Answer : 1961'
    },{
      'que' : '12) Mark Waugh is commonly called what?',
      'ans' : 'Answer : Junior'
    },{
      'que' : '13) Who has scored 14000 runs in T20 cricket?',
      'ans' : 'Answer : Chris Gayle'
    },{
      'que' : '14) Koneru Humpy excels in which sports?',
      'ans' : 'Answer : Chess'
    },{
      'que' : '15) Who won the ODI world cup 2011?',
      'ans' : 'Answer : India'
    },
  ];

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
            Text(("Learn about National Games"),
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
            child:  InkWell(
                onTap: () {
                  Share.share("https://www.cricbuzz.com/profiles/1413/virat-kohli");//ama aa list nej share karta sikhvanu che
                },
                child: Icon(Icons.share,color: Colors.red,size: 40)),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: qNationalGames.length,
        shrinkWrap: true,
        itemBuilder:
            (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(qNationalGames[index]['que'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(qNationalGames[index]['ans'],
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          );
        },),
    );
  }
}

class Electronic extends StatelessWidget {
  Electronic({Key? key}) : super(key: key);

  List qElectronic = [
    {
      'que' : '1) What part of an atom has no electrical charge?',
      'ans' : 'Answer : Neutron'
    }, {
      'que' : '2) An ammeter is used to measure _____?',
      'ans' : 'Answer : Current'
    },{
      'que' : '3) What metal is the best conductor of electricity?',
      'ans' : 'Answer : Silver'
    },{
      'que' : '4) Zener diode can be described as _____?',
      'ans' : 'Answer : Voltage'
    },{
      'que' : '5) How many PN junction in a transistor?',
      'ans' : 'Answer : Two'
    },{
      'que' : '6) What are the common faults in BJT?',
      'ans' : 'Answer : All of the above'
    },{
      'que' : '7) Which material is used in soldering wire?',
      'ans' : 'Answer : Lead and tin'
    },{
      'que' : '8) What are the two main applications for ac?',
      'ans' : 'Answer : Power,Information'
    },{
      'que' : '9) What voltage will an AC voltmeter diplay?',
      'ans' : 'Answer : Rms'
    },{
      'que' : '10) How many bits are in an ASCII character?',
      'ans' : 'Answer : 8'
    },{
      'que' : '11) The input resistance of a VTVM is about _____?',
      'ans' : 'Answer : 10 MO'
    },{
      'que' : '12) A CRO is used to measure _____?',
      'ans' : 'Answer : All of the above'
    },{
      'que' : '13) Input signal magnitude is limited by _____?',
      'ans' : 'Answer : Attenuator'
    },{
      'que' : '14) A triac is a _____ switch?',
      'ans' : 'Answer : Bidirectional'
    },{
      'que' : '15) What is the value of one pico?',
      'ans' : 'Answer : One trillionath'
    },
  ];

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
            Text(("Learn about Electronic"),
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
            child:  InkWell(
                onTap: () {
                  Share.share("https://www.cricbuzz.com/profiles/1413/virat-kohli");//ama aa list nej share karta sikhvanu che
                },
                child: Icon(Icons.share,color: Colors.red,size: 40)),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: qElectronic.length,
        shrinkWrap: true,
        itemBuilder:
            (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(qElectronic[index]['que'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(qElectronic[index]['ans'],
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          );
        },),
    );
  }
}

class HumanBody extends StatelessWidget {
  HumanBody({Key? key}) : super(key: key);

  List qHumanBody = [
    {
      'que' : '1) What is the smallest bone in the body?',
      'ans' : 'Answer : Stapes'
    }, {
      'que' : '2) How many bones does an adult human have?',
      'ans' : 'Answer : 206'
    },{
      'que' : '3) What is the largest organ in the human body?',
      'ans' : 'Answer : Skin'
    },{
      'que' : '4) What percentage of water is in the human body?',
      'ans' : 'Answer : 60.00%'
    },{
      'que' : '5) How many lungs does the human body have?',
      'ans' : 'Answer : Two'
    },{
      'que' : '6) Which gland produces tears?',
      'ans' : 'Answer : Lacrimal'
    },{
      'que' : '7) Where does your small intestine start?',
      'ans' : 'Answer : Duodenum'
    },{
      'que' : '8) How many parts is the heart divided into?',
      'ans' : 'Answer :4'
    },{
      'que' : '9) What is the shape of DNA called?',
      'ans' : 'Answer : Double helix'
    },{
      'que' : '10) Why do human need insulin?',
      'ans' : 'Answer : To control blood sugar'
    },{
      'que' : '11) Who discoverd the first human cell?',
      'ans' : 'Answer : Robert Hooke'
    },{
      'que' : '12) What are antibodies made of?',
      'ans' : 'Answer : Protein'
    },{
      'que' : '13) Where are cardiac muscles located?',
      'ans' : 'Answer : Heart'
    },{
      'que' : '14) Where is Bile stored?',
      'ans' : 'Answer : Gall Bladder'
    },{
      'que' : '15) Middle layer of skin is called _____?',
      'ans' : 'Answer : Dermis'
    },
  ];

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
            Text(("Learn about Human Body"),
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
            child:  InkWell(
                onTap: () {
                  Share.share("https://www.cricbuzz.com/profiles/1413/virat-kohli");//ama aa list nej share karta sikhvanu che
                },
                child: Icon(Icons.share,color: Colors.red,size: 40)),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: qHumanBody.length,
        shrinkWrap: true,
        itemBuilder:
            (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(qHumanBody[index]['que'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(qHumanBody[index]['ans'],
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          );
        },),
    );
  }
}
