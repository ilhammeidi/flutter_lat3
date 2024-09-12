import 'package:flutter/material.dart';
import 'package:flutter_latihan3/model/message_data.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({super.key, required this.chatMessages, required this.scrollCtrl});

  final List<MessageObj> chatMessages;
  final ScrollController scrollCtrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      child: ListView.builder(
        controller: scrollCtrl,
        itemCount: chatMessages.length,
        itemBuilder: (context, index) {
          return Padding(padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: ChatBuble(
              date: chatMessages[index].date,
              isMe: chatMessages[index].isMe,
              message: chatMessages[index].message,
            )
          );
        }
      ),
    );
  }
}

class ChatBuble extends StatelessWidget {
  const ChatBuble({
    super.key,
    required this.isMe,
    required this.message,
    required this.date
  });

  final bool isMe;
  final List message;
  final String date;

  List<Widget> _bubleList(bool isMe, List message, String date, context) {
    return [
      CircleAvatar(
        radius: 30,
        backgroundImage: isMe ?
          const NetworkImage('https://i.pravatar.cc/100?u=1')
          : const NetworkImage('https://i.pravatar.cc/100?u=john')
      ),
      Expanded(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start, children: [
                Text(isMe ? 'Me' : 'John', style: const TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(width: 4),
                Text(date),
              ]),
              // ListView(
              //   shrinkWrap: true,
              //   physics: const ClampingScrollPhysics(),
              //   children: message.map((item) {
              //     return Row(
              //       mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
              //       children: [
              //          Container(
              //           padding: const EdgeInsets.all(4),
              //           margin: const EdgeInsets.only(bottom: 4),
              //           decoration: BoxDecoration(
              //             color: isMe ? Colors.pink[50] : Colors.white,
              //             borderRadius: BorderRadius.only(
              //               topLeft: isMe ? const Radius.circular(10) : const Radius.circular(0),
              //               topRight: isMe ? const Radius.circular(0) : const Radius.circular(10),
              //               bottomLeft: const Radius.circular(10),
              //               bottomRight: const Radius.circular(10),
              //             ),
              //           ),
              //           child: Text(item)
              //         ),
              //       ],
              //     );
              //   }).toList(),
              // )
              Column(
                crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: message.map((item) {
                  return Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(bottom: 4),
                    decoration: BoxDecoration(
                      color: isMe ? Colors.pink[50] : Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: isMe ? const Radius.circular(29) : const Radius.circular(0),
                        topRight: isMe ? const Radius.circular(0) : const Radius.circular(20),
                        bottomLeft: const Radius.circular(20),
                        bottomRight: const Radius.circular(20),
                      ),
                    ),
                    child: Text(item)
                  );
                }).toList()
              )
            ]
          )
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: isMe ?
        _bubleList(isMe, message, date, context).reversed.toList()
        : _bubleList(isMe, message, date, context),
    );
  }
}

