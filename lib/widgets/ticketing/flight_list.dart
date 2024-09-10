import 'package:flutter/material.dart';
import 'package:flutter_latihan3/model/flight_data.dart';
import 'package:flutter_latihan3/widgets/ticketing/ticket_card.dart';

class FlightList extends StatelessWidget {
  const FlightList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Upcoming Flights', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),),
          Text('View All', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.amber[900]))
        ]),
      ),
      SizedBox(
        height: 200,
        child: ListView.builder(
          itemCount: flightData.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TicketCard(
                  from: flightData[index].from,
                  to: flightData[index].to,
                  codeFrom: flightData[index].codeFrom,
                  codeTo: flightData[index].codeTo,
                  long: flightData[index].long,
                  date: flightData[index].date,
                  time: flightData[index].time,
                  number: flightData[index].number
                ),
              ),
            );
          },
        ),
      )
    ]);
  }
}