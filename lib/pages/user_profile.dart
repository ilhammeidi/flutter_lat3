import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 160,
            backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Sliver', style: TextStyle(color: Colors.white)),
              background: Image.network(
                'https://picsum.photos/300/300/?random=hotel_london',
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.5),
                colorBlendMode: BlendMode.multiply,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://picsum.photos/300/300/?random=hotel_london')
                    )
                  ),
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Container(
                      margin: const EdgeInsets.only(top: 200),
                      color: Colors.pink[100],
                      padding: const EdgeInsets.all(16),
                      alignment: Alignment.topLeft,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Text('John Doe', style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),),
                        const SizedBox(height: 4),
                        Text('On Your contact', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey)),
                      ]),
                    ),
                    const Positioned(
                      bottom: 20,
                      right: 32,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage('https://i.pravatar.cc/100?u=2'),
                      )
                    ),
                  ],),
                ),
                const SizedBox(
                  height: 1300,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}