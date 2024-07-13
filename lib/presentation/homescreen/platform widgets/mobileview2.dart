import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spiceweb/constants/constants.dart';

class MobileViewtwo extends StatefulWidget {
  const MobileViewtwo({
    super.key,
    required this.screenheight,
    required this.screenwidth,
    required this.images,
    required this.names,
  });

  final double screenheight;
  final double screenwidth;
  final List<String> images;
  final List<String> names;

  @override
  State<MobileViewtwo> createState() => _MobileViewtwoState();
}
class _MobileViewtwoState extends State<MobileViewtwo> {

  bool istrue=false;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [

        //heading and images
        SliverToBoxAdapter(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Main column
                Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: widget.screenwidth * 0.8,
                          height: widget.screenheight * 0.4,
                          child: Opacity(
                            opacity: .3,
                            child: Image.asset('assets/pepper.jpg')
                          )
                        ),
                        Positioned(
                          left: 50,
                          top: 50,
                          child: Container(
                            width: widget.screenwidth * 0.6,
                            height: widget.screenheight * 0.4,
                            child:  Text(
                              'The Natural Spices produced in the hills of Gudallur',
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4,
                              style:appfont,
                            )
                          )
                        )
                      ],
                    ),
                    const SizedBox(height: 2),
                    const SizedBox(height: 20),
                    Text(
                      "Here the heading",
                      style:appfont
                    ),
                    const SizedBox(height: 10),
                    Text('here goes the subtext',style:subheading,),
                    const SizedBox(height: 20),
                  ],
                )
              ],
            ),
          ),
        ),

        //product grid
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {

              // single image child container
              return InkWell(
               
                onTap: () {
                  showDialog(context: context, builder:(context) {
                    return StatefulBuilder(builder: (context, setState) => 
                       AlertDialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        title: Image.asset(widget.images[index]),
                        actions:  [Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Text(widget.names[index],style: productheading,),
                          SizedBox(height: 10,),
                          Text('Cardamom is an aromatic spice used in cooking and baking, especially in Indian cuisine, known for its sweet and spicy flavor and digestive benefits.',style: productsubheading,),
                          const SizedBox(height: 2,),
                          Text('₹ 199/kg only/-',style: productprice,),
                          const  SizedBox(height: 6,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.pop(context);
                                istrue=!istrue;
                                if(istrue=true){
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                    content: Center(child: Text('${widget.names[index]} Added to cart',style: productprice,)),
                                    backgroundColor: Colors.white,
                                    margin: EdgeInsets.all(10),
                                    behavior:SnackBarBehavior.floating,)
                                  );
                                }
                              });
                            },
                            //add to cart button
                            child: Card(elevation: 10,
                            shadowColor: Colors.black,
                              child: Container(width: 150,
                              color: Colors.orange[100],
                              height: 30,
                              child: Center(
                                child: istrue?const Text('Go to cart'):
                                const Text('Add to Cart'),),),),
                          ),
                          ],)
                          ],
                        )],
                      ),
                    );
                  },);
                },

                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.1),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  width: widget.screenwidth * 0.4,
                  height: 1000,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          child: Image.asset(widget.images[index], fit: BoxFit.cover),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: SizedBox(
                          child: Text(
                            widget.names[index],
                            style:productheading
                          )
                        )
                      ),
                      const SizedBox(height: 2),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 13),
                            child: Text(
                              'Cardamom is an aromatic spice used in cooking and baking, especially in Indian cuisine, known for its sweet and spicy flavor and digestive benefits.',
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style:productsubheading ,
                            ),
                          )
                        ),
                      ),
                      const SizedBox(height: 2),
                      Expanded(
                        child: Container(
                          child: Text(
                            '₹ 199/kg only/-',
                            style: productprice,
                          )
                        )
                      )
                    ],
                  ),
                ),
              );
            },
            childCount: widget.images.length,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
        ),
      ],
    );
  }
}