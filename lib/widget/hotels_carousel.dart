import 'package:flutter/material.dart';
import 'package:traveltourism/model/hotel_model.dart';
import 'package:traveltourism/widget/small_title.dart';

import 'hotel_card.dart';

class HotelsCarousel extends StatefulWidget {
  HotelsCarousel({Key? key}) : super(key: key);

  @override
  _HotelsCarouselState createState() => _HotelsCarouselState();
}

class _HotelsCarouselState extends State<HotelsCarousel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SmallTitle(title: "Exclusive Hotels"),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: (BuildContext context, int index) {
              return HotelCard(
                hotel: hotels[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
