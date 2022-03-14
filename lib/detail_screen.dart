import 'package:flutter/material.dart';
import 'package:prak1/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 400,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: ClipRRect(
                      child: place.imageAsset != ''
                          ? Image.asset(place.imageAsset)
                          : Image.network(place.imageNetwork),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  place.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ), //Container for title
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        Text(place.openDay),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.access_time),
                        Text(place.openTime),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.attach_money),
                        Text(place.ticketPrice),
                      ],
                    ),
                  ],
                ),
              ), //new Container
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  place.desc,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
              ), //Container for desc
              Container(
                child: SizedBox(
                  height: 166,
                  child: listGallery(place),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget listGallery(TourismPlace place) {
    return ListView(
      padding: const EdgeInsets.only(left: 16, bottom: 16),
      scrollDirection: Axis.horizontal,
      children: place.gallery
          .map(
            (item) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(item),
              ),
            ),
          )
          .toList(),
    );
  }
}
