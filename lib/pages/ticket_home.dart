import 'package:flutter/material.dart';
import 'package:flutter_latihan3/widgets/ticketing/flight_list.dart';
import 'package:flutter_latihan3/widgets/ticketing/hotel_list.dart';
import 'package:flutter_latihan3/widgets/ticketing/ticketing_header.dart';

class TicketHome extends StatelessWidget {
  const TicketHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: TicketingHeader(),
          ),
          SizedBox(height: 16),
          FlightList(),
          SizedBox(height: 16),
          HotelList(),
          SizedBox(height: 16),
        ],
    );
  }
}