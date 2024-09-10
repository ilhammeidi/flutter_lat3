import 'package:flutter/material.dart';
import 'dart:math' as math;

class TicketCard extends StatelessWidget {
  const TicketCard({
    super.key,
    required this.from,
    required this.to,
    required this.codeFrom,
    required this.codeTo,
    required this.long,
    required this.date,
    required this.time,
    required this.number
  });

  final String from;
  final String to;
  final String codeFrom;
  final String codeTo;
  final String long;
  final String date;
  final String time;
  final int number;

  final _title = const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w500
  );

  final _subtitle = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w500
  );

  final double _radius = 30;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Column(children: [
        Container(
          height: 100,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.indigo[600],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(_radius),
              topRight: Radius.circular(_radius),
            ),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Flexible(
              flex: 1,
              child: Column(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(codeFrom, style: _title),
                const SizedBox(height: 2),
                Text(from, style: _subtitle),
              ]),
            ),
            Flexible(flex: 2, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              const SizedBox(width: 80, child: PlaneDeco()),
              const SizedBox(height: 10),
              Text(long, style: _subtitle),
            ])),
            Flexible(
              flex: 1,
              child: Column(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(codeTo, style: _title),
                const SizedBox(height: 2),
                Text(to, style: _subtitle),
              ]),
            ),
          ]),
        ),
        Container(
          height: 100,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.deepOrange[900],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(_radius),
              bottomRight: Radius.circular(_radius),
            )
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Flexible(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(date, style: _title),
                const SizedBox(height: 2),
                Text('Date', style: _subtitle),
              ]),
            ),
            Flexible(child: Column(children: [
              Text(time, style: _title),
              const SizedBox(height: 2),
              Text('Departure', style: _subtitle),
            ])),
            Flexible(
              child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(number.toString(), style: _title),
                const SizedBox(height: 2),
                Text('Number', style: _subtitle),
              ]),
            ),
          ]),
        )
      ]),
      const CutDeco(),
    ]);
  }
}

class CutDeco extends StatelessWidget {
  const CutDeco({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          width: 15,
          height: 30,
          decoration: BoxDecoration(
            color:Colors.grey.shade100,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            )
          ),
            
        ),
        Expanded(child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constrains) {
            return Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: List.generate(
                (constrains.constrainWidth()/15).floor(),
                (index) => SizedBox(
                  width: 5, height: 2,
                  child: DecoratedBox(decoration: BoxDecoration(
                    color:Colors.grey.shade100,
                  ))
                )
              ),
            );
          },
        )),
        Container(
          width: 15,
          height: 30,
          decoration: BoxDecoration(
            color:Colors.grey.shade100,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            )
          ),
            
        ),
      ]),
    );
  }
}

class PlaneDeco extends StatelessWidget {
  const PlaneDeco({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      const Icon(Icons.circle_outlined, size: 12, color: Colors.white),
      const Icon(Icons.more_horiz, size: 12, color: Colors.white),
      Transform.rotate(
        angle: 90 * math.pi/180,
        child: const Icon(Icons.airplanemode_active, size: 12, color: Colors.white),
      ),
      const Icon(Icons.more_horiz, size: 12, color: Colors.white),
      const Icon(Icons.circle_outlined, size: 12, color: Colors.white)
    ]);
  }
}