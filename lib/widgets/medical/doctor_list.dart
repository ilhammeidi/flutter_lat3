import 'package:flutter/material.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  static List<Map<String, String>> doctors = [
    {
      'name': 'John',
      'title': 'Surgeon',
      'avatar': 'https://i.pravatar.cc/100?u=2'
    },
    {
      'name': 'Jean',
      'title': 'Surgeon',
      'avatar': 'https://i.pravatar.cc/100?u=1'
    },
    {
      'name': 'Jim',
      'title': 'Surgeon',
      'avatar': 'https://i.pravatar.cc/100?u=50'
    },
    {
      'name': 'Jink',
      'title': 'Surgeon',
      'avatar': 'https://i.pravatar.cc/100?u=12'
    },
    {
      'name': 'Jane',
      'title': 'Surgeon',
      'avatar': 'https://i.pravatar.cc/100?u=45'
    },
    {
      'name': 'Jihan',
      'title': 'Surgeon',
      'avatar': 'https://i.pravatar.cc/100?u=am'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(slivers: <Widget>[
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        sliver: SliverToBoxAdapter(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Doctor List', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),),
            const Text('See All', style: TextStyle(color: Colors.grey),)
          ]),
        ),
      ),
      const SliverToBoxAdapter(child: SizedBox(height: 8)),
      SliverGrid(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300.0,
          mainAxisExtent: 240,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            final doctor = doctors[index];
            return DoctorCard(
              name: doctor['name']!,
              title: doctor['title']!,
              avatar: doctor['avatar']!
            );
          },
          childCount: doctors.length,
        ),
      ),
    ]);
  }
}

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key, required this.name, required this.title, required this.avatar});

  final String name;
  final String title;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 100,
      child: Card(
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            CircleAvatar(radius: 70, backgroundImage: NetworkImage(avatar),),
            Expanded(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(padding:const  EdgeInsets.symmetric(vertical: 8),
                child: Text(name, style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),),
              ),
              Text(title, style: Theme.of(context).textTheme.labelSmall,)
            ],))
          ],),
        ),
      ),
    );
  }
}