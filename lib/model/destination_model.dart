import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/index.jpg',
    name: 'Hill Side',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 3000,
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'River Side',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 21000,
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Olympus',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 12500,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/index1.JPG',
    city: 'Haputale',
    country: 'Srilanka',
    description: 'Visit Lipton Seat!',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/index2.JPG',
    city: 'Ella',
    country: 'Srilanka',
    description: 'Visit little Adams Peak!',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/index.jpg',
    city: 'Ohiya',
    country: 'Srilanka',
    description: 'Visit Worlds End!',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/sigiriya.jpg',
    city: 'Sigiriya',
    country: 'Srilanka',
    description: 'Visit Sigiriya!',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/index3.jpg',
    city: 'Jaffna',
    country: 'Srilanka',
    description: 'Visit fort!',
    activities: activities,
  ),
];
