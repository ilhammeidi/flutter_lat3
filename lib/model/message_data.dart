class MessageObj {
  final List message;
  final String date;
  final bool isMe;

  MessageObj({required this.message, required this.date, required this.isMe});
}

final List<MessageObj> messageData = [
  MessageObj(
    message: [
      'Lorem Ipsum Lorem Ipsum, Lorem Ipsum Lorem Ipsum, Lorem Ipsum Lorem Ipsum',
      'Dolor sit amet Dolor sit amet'
    ],
    date: '12:00',
    isMe: true
  ),
  MessageObj(
    message: [
      'Lorem Ipsum Lorem Ipsum',
      'Dolor sit amet'
    ],
    date: '12:00',
    isMe: false
  ),
  MessageObj(
    message: [
      'Lorem Ipsum',
      'Dolor sit amet'
      'Lorem Ipsum',
    ],
    date: '12:00',
    isMe: true
  ),
  MessageObj(
    message: [
      'Lorem Ipsum',
      'Dolor sit amet',
      'Dolor amet',
      'sit amet'
    ],
    date: '12:00',
    isMe: true
  ),
  MessageObj(
    message: [
      'Dolor sit amet'
    ],
    date: '12:00',
    isMe: false
  ),
  MessageObj(
    message: [
      'Lorem Ipsum',
      'Dolor sit amet Dolor sit amet'
    ],
    date: '12:00',
    isMe: true
  ),
  MessageObj(
    message: [
      'Lorem Ipsum Lorem Ipsum, Lorem Ipsum Lorem Ipsum, Lorem Ipsum Lorem Ipsum',
      'Dolor sit amet'
    ],
    date: '12:00',
    isMe: false
  ),
  MessageObj(
    message: [
      'Lorem Ipsum',
      'Dolor sit amet',
      'Lorem Ipsum',
    ],
    date: '12:00',
    isMe: true
  ),
  MessageObj(
    message: [
      'Lorem Ipsum',
      'Dolor sit amet',
      'Dolor amet',
      'sit amet'
    ],
    date: '12:00',
    isMe: true
  ),
  MessageObj(
    message: [
      'Dolor sit amet'
    ],
    date: '12:00',
    isMe: false
  )
];