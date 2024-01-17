import 'package:flutter/material.dart';
import 'package:whatsapp_ui/conversationScreen.dart';
import 'package:whatsapp_ui/lists.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.white,
            backgroundColor: Colors.teal,
            title: Text('WhatsApp'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.group,),),
              Text('Chats', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              Text('Updates', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              Text('Calls', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ]),
            actions: [
              Icon(Icons.camera_alt_outlined),
              SizedBox(width: 15,),
              Icon(Icons.search),
              PopupMenuButton(surfaceTintColor: Colors.white,
                icon: Icon(Icons.more_vert),
                itemBuilder: (context) => [
                  PopupMenuItem(value: '1', child: Text('New group'), padding: EdgeInsets.only(right: 20, left: 10),),
                  PopupMenuItem(value: '2', child: Text('New broadcast')),
                  PopupMenuItem(value: '3', child: Text('Linked devices')),
                  PopupMenuItem(value: '4', child: Text('Starred messages')),
                  PopupMenuItem(value: '5', child: Text('Settings')),
                ],
              ),
              SizedBox(width: 10,),
            ],
          ),
          body: TabBarView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.group_add),
                      //backgroundImage: AssetImage('assets/images/ahsan.png'),
                    ),
                    title: Text('New community'),
                  ),
                  Divider(thickness: .5,),
                  SizedBox(height: 10,),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.teal.withOpacity(.5),
                      child: Icon(Icons.notifications_active),
                     // backgroundImage: AssetImage('assets/images/ahsan.png'),
                    ),
                    title: Text('Announcements'),
                    subtitle: Text("Group 'Flutter B..."),
                    trailing: Text('Yesterday'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/flutterGroup.jpg',),
                    ),
                    title: Text('Flutter Bootcamp'),
                    subtitle: Text('Top 10 widgets in flutter'),
                  ),
                ],
              ),
              ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index){
                  ChatItem chat = chats[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(chat.image),
                    ),
                    title: Text(chat.name, style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text(chat.message),
                    trailing: Text(chat.time),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ConversationScreen() ));
                    },
                  );
              }),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Status', style: TextStyle(fontSize: 20, ),),
                        Icon(Icons.more_vert),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/ahsan.png'),
                    ),
                    title: Text('My status', style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('Tap to add status update'),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Recent updates',),
                  ),
                  Expanded(
                    child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index){
                  ChatItem chat = chats[index];
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                        color: Colors.teal,
                        width: 2),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(chat.image),
                        
                      ),
                    ),
                    title: Text(chat.name, style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text(chat.time),
                  );
              }),),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.teal,
                          child: Icon(Icons.link, 
                          color: Colors.white,),
                        ),
                        title: Text('Create call link'),
                        subtitle: Text('Share a link for your WhatsApp call'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text('Recent', style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                  Expanded(
                  child: ListView.builder(
                    itemCount: chats.length,
                    itemBuilder: (context, index){
                      ChatItem chat = chats[index];
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(chat.image),
                        ),
                        title: Text(chat.name),
                        subtitle: Text('13 January, '+chat.time),
                        trailing: Icon(Icons.phone,
                        color: Colors.teal,),
                      );
                  }),
                ),
                ],
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            foregroundColor: Colors.white,
            backgroundColor: Colors.teal,
            child: Icon(Icons.chat),
            onPressed: (){}),
        ));
  }
}
