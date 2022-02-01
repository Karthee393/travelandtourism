import 'package:flutter/material.dart';
import 'package:traveltourism/model/destination_model.dart';
import 'package:traveltourism/widget/activity_card.dart';
import 'package:traveltourism/widget/detail_app_bar.dart';


class DestinationDetailPage extends StatefulWidget {
  DestinationDetailPage({Key? key, required this.destination})
      : super(key: key);

  final Destination destination;

  @override
  _DestinationDetailPageState createState() =>
      _DestinationDetailPageState(this.destination);
}

class _DestinationDetailPageState extends State<DestinationDetailPage> {
  final Destination destination;
  _DestinationDetailPageState(this.destination);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          DetailAppBar(
            destination: this.destination,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ActivityCard(
                activity: this.destination.activities[index],
              ),
              childCount: this.destination.activities.length,
            ),
          ),
        ],
      ),
    );
  }
}
