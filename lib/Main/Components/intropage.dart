
import "package:flutter/material.dart";
import "package:animations/animations.dart";


class Intropages extends StatefulWidget {
  final filepath;
  final title;
  final price;
  Intropages({Key? key, this.filepath, this.title, this.price});


  
  

  @override
  State<Intropages> createState() => _IntropageStates(this.filepath, this.title, this.price);
  
}

class _IntropageStates extends State<Intropages> {
  final filepath;
  final title;
  final price;
  _IntropageStates(this.filepath, this.title, this.price);

  List icon = [
    Icon(Icons.expand),
    Icon(Icons.nature),
    Icon(Icons.flag),
    Icon(Icons.nature),
  ];
  
  

  
  @override
  Widget build(BuildContext context) {
    print(icon.length);
    
    return Scaffold(
      
      body: SingleChildScrollView(
        
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 425,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  
                  image: AssetImage(filepath)
                )
              ),
              child: Container(
                margin: EdgeInsets.only(top: 40),
                alignment:Alignment.topCenter,
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset('assets/icons/right.png')
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 25),
                      child: Icon(Icons.heart_broken, color: Color.fromRGBO(225, 160, 103, 1))
                    )
                  ]
                )

              )
              
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 430,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(247, 241, 234, 0.35)
              ),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 25),
                          child: Text(title, style: TextStyle(fontFamily: "Poppins", fontSize: 21, color: Color.fromRGBO(99, 56, 32, 1), fontWeight: FontWeight.w600))
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30, right: 25),
                          child: Text(price, style: TextStyle(fontFamily: "Poppins", fontSize: 25, color: Color.fromRGBO(99, 56, 32, 1), fontWeight: FontWeight.w500))
                                                    
                        )

                      ]
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 327,
                    height: 86,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1.0, color: Color.fromRGBO(247, 241, 234, 1))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Icon(Icons.nature, color: Color.fromRGBO(225, 160, 103, 1))
                        ),
                        Container(
                          child: Icon(Icons.nature, color: Color.fromRGBO(225, 160, 103, 1)),
                        ),
                        Container(
                          child: Icon(Icons.nature, color: Color.fromRGBO(225, 160, 103, 1)),
                        ),
                        Container(
                          child: Icon(Icons.search, color: Color.fromRGBO(225, 160, 103, 1))
                        )
                      ]
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    child: Text(r"Light weight Osmind Armchair is famous for it’s comfort and durability, it’s made of unproductive oil palm wood from Indonesia. Water resistant and weather shield formula is applied for longer life.",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 14, color: Color.fromRGBO(9, 56, 32, 1)))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 326,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(106, 147, 71, 1)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text("Add to cart", style: TextStyle(fontFamily: "Poppins", fontSize: 16, color: Colors.white, fontWeight:FontWeight.w400))
                        ),
                        
                      ]
                    )
                  )
                ]
              )
              
            ),
            
            
          ]
        )
      )
    );
  }
}


