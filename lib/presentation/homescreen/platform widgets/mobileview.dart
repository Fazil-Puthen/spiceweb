import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
    required this.screenheight,
    required this.screenwidth,
    required this.images,
  });

  final double screenheight;
  final double screenwidth;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        
            //main column
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Stack(children:[ SizedBox(
                width: screenwidth*0.8,
                height: screenheight*0.4,
                child: Opacity(
                  opacity:.3 ,
                  child: Image.asset('assets/pepper.jpg'))),
              Positioned(left: 50,
              top: 50,
              child: Container(width: screenwidth*0.6,
              // color: Colors.red,
              height: screenheight*0.4,
                child:const  Text('The Natural Spices produced in the hills of Bitherkad',
                softWrap: true,overflow: TextOverflow.ellipsis,
                maxLines: 4,style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.w800,color: Colors.green),)))]),
              const SizedBox(height: 2,),
              // SizedBox(height: screenheight*0.2,width: screenwidth*0.2,
              // // color: Colors.yellow,
              // child:const Text('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
              // style: TextStyle(fontWeight:FontWeight.w800,),
              // softWrap: true,
              // ),)
                  ],
            ),
            const SizedBox(height: 20,),
        
             const   Text("Here the heading",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                  const SizedBox(height: 10,),
                  const Text('here goes the subtext'),
                  const SizedBox(height: 20,),
            
            //down main container
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: screenheight,
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                    mainAxisSpacing:20 ,
                    crossAxisSpacing: 20
                    ),
                    // physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      //single image chie container
                     return Container(width: screenwidth*0.4,
                    //  color: Colors.red,
                     height: 1000,
                       child: Column(
                         children: [
                           Expanded(
                            flex: 4,
                             child: Container(
                               child: Image.asset(images[index],fit: BoxFit.cover,),
                             ),
                           ),
                          const Flexible(flex: 1, child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0),
                            child: Text('here the heading',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),))),
                          const SizedBox(height: 1,),
                           Expanded(flex:1,
                          child: Container(
                            // color: Colors.amber,
                            child:const  Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Text('Cardamom is an aromatic spice used in cooking and baking, especially in Indian cuisine, known for its sweet and spicy flavor and digestive benefits.',
                                                          softWrap: true,overflow: TextOverflow.ellipsis,maxLines: 3,),
                              ),
                            )),
                            ),
                            const SizedBox(height: 2,),
                         ],
                       ),
                     );
                    },
                    itemCount: images.length,
                    ),
                )
                
              ],
            ),
            const SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}