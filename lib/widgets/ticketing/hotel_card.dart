import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({
    super.key,
    required this.name,
    required this.location,
    required this.thumb,
    required this.price
  });

  final String name;
  final String location;
  final String thumb;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: 300,
            height: 300,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                image: DecorationImage(
                  image: NetworkImage(thumb),
                  fit: BoxFit.fill
                )
              ),
            )
          ),
          const SizedBox(height: 16),
          Text(name, style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.grey.shade300)),
          const SizedBox(height: 8),
          Text(location, style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white)),
          const SizedBox(height: 8),
          Text('\$$price/night', style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.grey.shade300)),
        ]),
      ),
    );
  }
}