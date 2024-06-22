import 'package:flutter/material.dart';

class Customstore extends StatefulWidget {
  const Customstore({Key? key}) : super(key: key);

  @override
  _CustomstoreState createState() => _CustomstoreState();
}

class _CustomstoreState extends State<Customstore> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
      height: 125,
      width: 300,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 25),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(60) , color: Color.fromRGBO(124, 57, 208, 67)),
      child:  Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15),
        
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Zudio"  , style: TextStyle(fontSize: 25 , color: Colors.white , fontWeight: FontWeight.w700),),
              
              Row( 

                children: [ Icon(Icons.add_location_outlined , color: Colors.white,),  Text("Patiala" , style: TextStyle( fontSize: 15 ,fontWeight: FontWeight.w500 ,color: Colors.white),)],)
            ]),
          ),

          Image.asset('assets/store.png'),
        ],
      ),
    ),
    );
  }
}
