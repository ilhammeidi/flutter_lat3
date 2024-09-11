import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/300/300/?random=hotel_london')
                    )
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                  clipBehavior: Clip.none,
                  padding: const EdgeInsets.all(8),
                  child: Stack(children: [
                    Column(children: [
                      Text('John Doe', style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold),),
                      const SizedBox(height: 4),
                      Text('On Your contact', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey)),
                    ]),
                    const Positioned(
                      top: -100,
                      right: 32,
                      child: CircleAvatar(
                        radius: 200,
                        backgroundImage: NetworkImage('https://i.pravatar.cc/100?u=2'),
                      )
                    )
                  ],),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}