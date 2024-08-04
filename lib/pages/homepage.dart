import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        
        leading: Icon(null),
        actions: [
           IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_basket, color: Colors.grey[800],),
          )
        ],
      ),
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
             Text('Food Delivery', style: TextStyle(color: Colors.grey[80], fontWeight: FontWeight.bold, fontSize: 30),),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makecategory(isActive:true,Title:'pizza'),
                        makecategory(isActive:false,Title:'Burgers'),
                        makecategory(isActive:false,Title:'Kabab'),
                        makecategory(isActive:false,Title:'Desert'),
                        makecategory(isActive:false,Title:'Salad')
                      ],
                    )
                  ),
                  SizedBox(height: 10,),
                  
            ],
          ),),
          Padding(padding: EdgeInsets.all(20),
          child: Text('Free Delivery',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey[700]),),
          ),
          Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              makeItem(image:'assets/images/pizza.jpg'),
             
              makeItem(image:'assets/images/pizza1.jpg'),
              makeItem(image:'assets/images/piz.jpg'),
              makeItem(image:'assets/images/pizza2.jpg'),
               makeItem(image:'assets/images/pzzz.jpg'),
            ],
          ),),
          ),
          SizedBox(height: 10)
        ],
      )),

    );

  }
  Widget makecategory({isActive,Title}){
    return AspectRatio(aspectRatio: isActive ? 3:2.0/1,
    child: Container(
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: isActive ?Colors.yellow:Colors.white,
        borderRadius: BorderRadius.circular(50)
      ),
      child: Align(child: Text(Title,style: TextStyle(color: isActive? Colors.white:Colors.grey[500],fontSize: 18,fontWeight: isActive?FontWeight.bold:FontWeight.w100),)),
    ), );
  }
  Widget  makeItem({image}){
    return AspectRatio(aspectRatio: 1/1.5,
    child: GestureDetector(
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image:  DecorationImage(image: AssetImage(image),
          fit:BoxFit.cover 
          ),
          
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [.2,.9],
              colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.3),
            ])
          ),
          child: Padding(padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.favorite,color: Colors.white,),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("\$ 15.00", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Vegetarian Pizza", style: TextStyle(color: Colors.white, fontSize: 20),)
                    ],)
            ],
          ),),
          
        ),
        
      ),
    ),
    );
  }
}