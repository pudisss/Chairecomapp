import "package:flutter/material.dart";
import 'package:animations/animations.dart';
import "Components/intropage.dart";

class Main extends StatefulWidget {
  const Main({ Key? key }) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  List listview = [
    "New",
    "Popular",
    "New"
  ];
  final List filepath = [
    "assets/images/chart1.png",
    "assets/images/chair2.png"
  ];
  final List price = [
    r"$230",
    r"$190"
  ];
  final List title = [
    "Osmind Armchair",
    "Arc Rockingchair"
  ];

  List<String> catefilepath = [
    "assets/icons/chairicon.png",
    "assets/icons/tableicon.png",
    "assets/icons/lamb.png",
    "assets/icons/shelves.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.menu, color: Color.fromRGBO(225, 160, 103, 1))
        ),
        backgroundColor: Color.fromRGBO(247, 241, 234, 1),
        elevation: 0,
        title: Image.asset("assets/icons/logo.png"),
        actions: [
          GestureDetector(
            child: Image.asset("assets/icons/profile.png")
          )
        ]
      ),
      body: SingleChildScrollView(
        
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromRGBO(247, 241, 234, 1),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                width: 327,
                height: 52,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 2.0, color: Color.fromRGBO(247, 241, 234, 1))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Icon(Icons.search, color: Color.fromRGBO(225, 160, 103, 1)),
                    ),
                    Container(
                      child: Text("Search for products", style: TextStyle(fontFamily: "Poppins", fontSize: 16, color: Color.fromRGBO(225, 160, 103, 1)))
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(Icons.mic, color: Color.fromRGBO(225, 160, 103, 1))
                    )
                  ]
                )
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 50),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(listview[i], style: TextStyle(fontFamily: "Poppins", fontSize: 14, color: Color.fromRGBO(99, 56, 32, 0.5)))
                    );
                  }
                )
              ),
              Container(
                height: 307,
                
                
                child: ListView.builder(
                  
                  scrollDirection: Axis.horizontal,
                  itemCount: filepath.length,
                  itemBuilder: (context, i) {
                    return OpenContainer(
                      openBuilder: (context, action) => new Intropages(filepath: filepath[i], title: title[i], price: price[i]),
                    transitionType: ContainerTransitionType.fadeThrough,
                      closedBuilder: (context, action) =>Container(
                      height: 306,
                      width: 217,
                      margin: EdgeInsets.only(left: 24),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(filepath[i])
                        )
                      ),
                      child: Container(

                        margin: EdgeInsets.only(top: 225, left: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    
                                    child: Text(price[i], style: TextStyle(fontFamily: "Poppins", fontSize: 21, fontWeight: FontWeight.w500, color: Color.fromRGBO(99, 56, 32, 1)))
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(title[i], style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w600, color: Color.fromRGBO(99, 56, 32, 0.4)))
                                  )
                                ]
                              )
                            ),
                            Container(
                              width: 60,
                              height: 60,
                              margin: EdgeInsets.only(bottom: 30, right: 10),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(106, 147, 71, 1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(Icons.shopping_cart, color: Colors.white,)
                      
                            )
                          ]
                        )
                      )
                    ),
                    
                    );
                    
                  }
                  
                )
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 50, left: 25),
                child: Text("Categories", style: TextStyle(fontFamily: "Poppins", fontSize: 18, fontWeight: FontWeight.w600, color: Color.fromRGBO(99, 56, 32, 1)))
              ),
              Container(
                margin: EdgeInsets.only(top: 25, left: 25),
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, i) {
                    return Column(children: [Container(
                      width: 69,
                      height: 69,
                      margin: EdgeInsets.only(left: 25),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(225, 160, 103, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Image.asset(catefilepath[i], color: Colors.white)
                      )
                    )]);
                  }
                ),
              )

            ]
          ),
        )
      )
      
      
    );
  }
}