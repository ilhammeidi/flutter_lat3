import 'package:flutter/material.dart';
import 'package:flutter_latihan3/model/hotel_data.dart';
import 'package:flutter_latihan3/widgets/ticketing/hotel_card.dart';

class HotelList extends StatelessWidget {
  const HotelList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Hotels Flights', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),),
          Text('View All', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.amber[900]))
        ]),
      ),
      SizedBox(
        height: 480,
        child: ListView.builder(
          itemCount: hotelData.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: HotelCard(
                name: hotelData[index].name,
                location: hotelData[index].location,
                thumb: hotelData[index].thumb,
                price: hotelData[index].price
              ),
            );
          }
        ),
      )
    ]);
  }
}