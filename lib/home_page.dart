import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20)),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Find Your's",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Inspiration",
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            hintText: "You are looking for ",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15)),
                      ),
                    ),
                    SizedBox(height: 10,)
                  ],
                )
            ),
            SizedBox(height: 20,),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Promo Today",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                SizedBox(height: 15,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        PromoCard('images/one.jpg'),
                        PromoCard('images/two.jpg'),
                        PromoCard('images/three.jpg'),
                        PromoCard('images/four.jpg'),
                        
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/five.jpg'),
                      )
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              stops: [0.1,0.9],
                              colors:
                              [
                                Colors.black.withOpacity(.8),
                                Colors.black.withOpacity(.1)
                              ]

                          )
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text("Best Desgin", style: TextStyle(color: Colors.white,fontSize: 20),),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
Widget PromoCard(image){
  return AspectRatio(aspectRatio: 2.62/3,
  child: Container(
    margin: EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(image),
      )
    ),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          stops: [0.1,0.9],

          colors:
          [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.1)
          ]

        )
      ),
    ),
  ),
  );
}