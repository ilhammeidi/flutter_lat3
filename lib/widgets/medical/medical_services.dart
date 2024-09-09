import 'package:flutter/material.dart';

class MedicalServices extends StatelessWidget {
  const MedicalServices({super.key});

  static List<dynamic> serviceList = [
    {
      'name': 'Service1',
      'thumb': 'assets/medical/img2.png'
    },
    {
      'name': 'Service2',
      'thumb': 'assets/medical/img3.png'
    },
    {
      'name': 'Service3',
      'thumb': 'assets/medical/img4.png'
    },
    {
      'name': 'Service4',
      'thumb': 'assets/medical/img5.png'
    },
    {
      'name': 'Service5',
      'thumb': 'assets/medical/img6.png'
    },
    {
      'name': 'Service6',
      'thumb': 'assets/medical/img7.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: serviceList.map((item){
          return SizedBox(
            width: 180,
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              color: Colors.grey.shade300,
              child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Image.asset(item['thumb'], width: 50,),
                ),
                Text(item['name'])
              ],),
            ),
          );
        }).toList(),
      ),
    );
  }
}