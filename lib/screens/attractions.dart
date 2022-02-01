import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:traveltourism/widget/destinations_carousel.dart';


class Attractions extends StatefulWidget {
  const Attractions({Key? key}) : super(key: key);

  @override
  _AttractionsState createState() => _AttractionsState();
}

class _AttractionsState extends State<Attractions> {
  final CollectionReference _nature =
      FirebaseFirestore.instance.collection('nature');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DestinationsCarousel(),
          ],
        ),
      ),
    );
  }
}
