import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spiceweb/presentation/homescreen/platform%20widgets/mobileview.dart';
import 'package:spiceweb/presentation/homescreen/platform%20widgets/tabview.dart';
import 'package:spiceweb/presentation/homescreen/platform%20widgets/webview.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  
  List<String> images=['assets/pepper.jpg',
   'assets/black cardamom.jpg',
    'assets/cardamom.jpg',
   'assets/corrainder.jpg',
   'assets/cumin.jpg','assets/pepper.jpg',
   'assets/black cardamom.jpg',
    'assets/cardamom.jpg',
   'assets/corrainder.jpg',
   'assets/cumin.jpg',
   'assets/pepper.jpg',
   'assets/black cardamom.jpg',
    'assets/cardamom.jpg',
   'assets/corrainder.jpg',
   'assets/cumin.jpg'];

  @override
  Widget build(BuildContext context) {
    final screenheight=MediaQuery.of(context).size.height;
    final screenwidth=MediaQuery.of(context).size.width;
    print('this is the screenwidth $screenwidth');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:

      //Appbar
       PreferredSize(preferredSize:Size.fromHeight(100),
       child: Container(
        height: 100,
        decoration:const  BoxDecoration(
          borderRadius:BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5)),
        ),
        child:
        //appbar child
       const  Padding(
          padding: EdgeInsets.symmetric(horizontal:20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Homemade',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
              Row(
                children: [
                Icon(Icons.heart_broken_outlined),
                SizedBox(width: 25,),
                Icon(Icons.card_travel)
              ],)
            ],
          ),
        )
       )),
       body:
       
       //Body
        SingleChildScrollView(
          child:screenwidth<1000 && screenwidth>500?
    
          //tab view child
         TabView(screenheight: screenheight, screenwidth: screenwidth, images: images)
          :screenwidth<=500?

          //mobile view child
          MobileView(screenheight: screenheight, screenwidth: screenwidth, images: images):

            //web view child
          WebView(screenheight: screenheight, screenwidth: screenwidth, images: images),
        )
    );
  }
}
