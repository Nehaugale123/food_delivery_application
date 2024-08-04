import 'package:flutter/material.dart';
import 'package:food_delivery_application/pages/homepage.dart';

class Starter extends StatefulWidget {
  const Starter({super.key});

  @override
  State<Starter> createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/s.jpg'),
          fit: BoxFit.cover)
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.6),
            Colors.black.withOpacity(0.2)],
            begin:Alignment.bottomCenter)
          ),
          child: Padding(padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Taking Order For Faster Delivery', style: TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold, ),),
              SizedBox(height: 20,),
               Text("See resturants nearby by \nadding location", style: TextStyle(color: Colors.white, height: 1.4, fontSize: 18),),
               SizedBox(height: 100,),
               Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors:[Colors.yellow,
                 Colors.orange,

                  ]
                  )
                ),
                child:MaterialButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
                },
                 minWidth: double.infinity,
                  child: Text('Start',style: TextStyle(color: Colors.white,),)
                  ),
                  ),
                   SizedBox(height: 30,),
                   Align(
                    child: Text("Now Deliver To Your Door 24/7", style: TextStyle(color: Colors.white70, fontSize: 15),),
                  ),
                  SizedBox(height: 30,),
                 
               
            ],
          ),
          ),
           
        ),
      ),
    );
  }
}