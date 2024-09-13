import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('daada'),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.grey,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            floating: false,
            expandedHeight: 400,
            backgroundColor: Colors.brown,
            centerTitle: false,
            // title: const Text('Sliver', style: TextStyle(color: Colors.white)),
            automaticallyImplyLeading: false,
            // leading: IconButton(
            //   icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24,),
            //   onPressed: () {
            //     Navigator.pop(context);
            //   }
            // ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://picsum.photos/300/300/?random=hotel_london',
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.5),
                colorBlendMode: BlendMode.multiply,
              ),

            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(120),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                height: 120,
                decoration: const BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  )
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Title', style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.white),),
                  Text('Lorem ipsum dolor sit amet', style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),),
                ],),
              ),
            )
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