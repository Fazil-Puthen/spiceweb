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
    return ListView(
      
    );
  }
}