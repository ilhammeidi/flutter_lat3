import 'package:flutter/material.dart';

class MedicalBanner extends StatelessWidget {
  const MedicalBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: const BorderRadius.all(Radius.circular(29)),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Center(child: Image.asset('assets/medical/img1.png', width: 75)),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('How do you feel?', textAlign: TextAlign.start, style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),),
            const Padding(padding: EdgeInsets.symmetric(vertical: 8),
              child: Text('Fill out your medical right now', textAlign: TextAlign.start,)
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                minimumSize: const Size(200, 40)
              ),
              child: const Text('Get Started', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
            )
          ]
        )
      ],),
    );
  }
}