import 'package:flutter/material.dart';
import 'package:flutter_latihan3/model/message_data.dart';

class ChatInput extends StatefulWidget {
  const ChatInput({super.key, required this.sendMsg});

  final Function(MessageObj) sendMsg;

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  final textController = TextEditingController();

  void handleSendMsg(String msgVal) {
    /// Generate Message
    final generateMessage = MessageObj(
      message: [msgVal],
      date: DateTime.now().toString(),
      isMe: true
    );

    /// Send Message
    widget.sendMsg(generateMessage);

    /// Clear Textfield
    textController.clear();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey, width: 1)
        )
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Expanded(
          child: TextField(
            controller: textController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.grey)
              ),
              filled: true,
              fillColor: Colors.grey.shade200,
              hintText: 'Write Message'
            ),
          ),
        ),
        const SizedBox(width: 8),
        IconButton(
          onPressed: () {
            handleSendMsg(textController.text);
          },
          icon: const Icon(Icons.send, size: 24, color: Colors.lime,),
          style: IconButton.styleFrom(
            backgroundColor: Colors.black
          )
        )
      ]),
    );
  }
}