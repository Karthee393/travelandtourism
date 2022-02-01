import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:traveltourism/widget/destinations_carousel.dart';
import 'package:traveltourism/widget/hotels_carousel.dart';


class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final CollectionReference _hotel =
      FirebaseFirestore.instance.collection("hotels");
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Column(children: [DestinationsCarousel(), HotelsCarousel()]));
  }
}
