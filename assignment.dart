import 'package:flutter/material.dart';
class NewScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    List<Map> mySandalList=[
      {
        'image':'assets/images/sndal1.jpeg',
        'name':"Ocayle",
        'price':'119',
      },{
    'image':'assets/images/sndl2.jpeg',
        'name':"Xami",
        'price':'129',
      },
      {
    'image':'assets/images/sndl3.jpeg',
        'name':"Lena",
        'price':'109',
      },
       {
    'image':'assets/images/sndl4.jpeg',
        'name':"ulani",
        'price':'139',
      },
       {
    'image':'assets/images/sndl5.jpeg',
        'name':"Max",
        'price':'119',
      },
      {
    'image':'assets/images/sndl6.jpeg',
        'name':"Mars",
        'price':'109',
      },
    ];
     return Scaffold(

      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("WOVEN STYLES"),
        centerTitle: true,
        actions: [
          Icon(Icons.chat),
          SizedBox(width: 10,),
          Icon(Icons.shopping_bag),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 0,mainAxisSpacing: 0,childAspectRatio: .7),
         itemCount: 6,
         itemBuilder: (context,index){
          return Container(
            
            decoration: BoxDecoration(border: Border.all(color: Colors.blueGrey),color: Colors.white,),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage( mySandalList[index]["image"]))),
                  height: 150,
                  width: double.infinity,
                ),
                SizedBox(height: 15,),
                Text( mySandalList[index]["name"]),
                SizedBox(height: 15,),
                Text("\$${ mySandalList[index]["price"]}"),
              ],
            ),

          );
        
         }),
      ),
    );
  }
}
  
