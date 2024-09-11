import 'package:flutter/material.dart';
import 'package:flutter_latihan3/model/message_data.dart';

class LilistPage extends StatelessWidget {
  const LilistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[50],
      // child: CustomScrollView(
      //   slivers: [
      //     SliverList(
      //       delegate: SliverChildBuilderDelegate(
      //         childCount: messageData.length,
      //         (BuildContext context, int index) {
      //           List<dynamic> msg = messageData[index].message;
      //           return Column(children: [
      //             Text(messageData[index].date),
      //             // SliverList(delegate: SliverChildListDelegate(
      //             //   msg.map((item) => Text(item)).toList()
      //             // )),
      //             ListView(children: msg.map((item) => Text(item)).toList())
      //           ]);
      //         }
      //       ),
      //     )
      //   ],
      // )
      child: ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (context, index) {
          List<dynamic> msg = messageData[index].message;
          return Column(children: [
            Text(messageData[index].date),
            ListView(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: msg.map((item) => Text(item)).toList()
            ),
          ]);
        },
      ),
    );
  }
}