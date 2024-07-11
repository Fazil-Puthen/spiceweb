import 'package:flutter/material.dart';

class TabView extends StatelessWidget {
  const TabView({
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
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Image.asset('assets/pepper.jpg'),
          SizedBox(height: screenheight*0.2,width: screenwidth*0.2,
          // color: Colors.yellow,
          child:const Text('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
          style: TextStyle(fontWeight:FontWeight.w800,),
          softWrap: true,
          ),)
              ],
        ),
        const SizedBox(height: 30,),
        
        //down main container
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.purple[100],
          ),
          width: screenwidth*0.9,
          height: screenheight,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            const   Text("Here the heading",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
              const SizedBox(height: 10,),
              const Text('here goes the subtext'),
              const SizedBox(height: 20,),
              SizedBox(
                height: screenheight*0.8,
                width: screenwidth*0.8,
                child:
    
                //child gridview container 
                GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2,
                  mainAxisSpacing: 80,
                  crossAxisSpacing: 50
                  ),
                  itemBuilder: (context, index) {
                    //single image chie container
                      return Container(width: screenwidth*0.4,
                   height: screenheight*0.4,
                     child: Column(
                       children: [
                         Expanded(
                           flex: 10,
                           child: SizedBox(
                             child: Image.asset(images[index],fit: BoxFit.cover,),
                           ),
                         ),
                        const Expanded(flex:1,child: Text('here the heading',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),
                        const SizedBox(height: 2,),
                        const Expanded(flex:1,child: Text('here goes the descripton'))
                       ],
                     ),
                   );
                  },
                  itemCount: images.length,
                  ),
              )
              
            ],
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}