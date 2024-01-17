
class ChatItem {
  final String name;
  final String message;
  final String image;
  final String time;

  ChatItem({
    required this.name,
    required this.message,
    this.image = '',
    required this.time,
  });
}

List<ChatItem> chats = [
  ChatItem(
      name: "Asif Taj",
      message: "Hello Brother",
      image: 'assets/images/asiftaj.jpg',
      time: '2:00 am'),
       ChatItem(
      name: "Osama Khanzada",
      message: "Hey, how's it going?",
      image: 'assets/images/osama.jpg',
      time: '2:45 pm'),
       ChatItem(
      name: "Shumail Mubeen",
      message: "Tea time? Just whi...",
      image: 'assets/images/shumail.jpg',
      time: '9:01 pm'),
       ChatItem(
      name: "Shahmeer Abid",
      message: "Rickhaw or fanc...",
      image: 'assets/images/shahmeer.jpg',
      time: '4:00 am'),
      ChatItem(
      name: "Junaid Jamshed",
      message: "Chill there, bir...",
      image: 'assets/images/junaid.jpg',
      time: '12:39 pm'),
      ChatItem(
      name: "Yasir Anwar",
      message: "Karachi flight ca...",
      image: 'assets/images/yasir.jpg',
      time: '11:20 pm'),
       ChatItem(
      name: "Mubashir Murad",
      message: "Coming for Eid, right? ",
      image: 'assets/images/mubashir.jpg',
      time: '11:00 am'),
       ChatItem(
      name: "Hamza Haris",
      message: "Stuffed myself at t...",
      image: 'assets/images/hamza.jpg',
      time: '9:40 am'),
       ChatItem(
      name: "Aneek Ilyas",
      message: "Lecture was a snooz...",
      image: 'assets/images/aneek.jpg',
      time: '12:20 pm'),
       ChatItem(
      name: "Amir Atta Muhammad",
      message: "Watching the cricket? ",
      image: 'assets/images/amir.jpg',
      time: '8:14 am'),
       ChatItem(
      name: "Asadullah",
      message: "Mom sent over some g...",
      image: 'assets/images/asad.jpg',
      time: '7:40 am'),
];
