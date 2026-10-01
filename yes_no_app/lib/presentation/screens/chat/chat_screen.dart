import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/My_Message_Bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/Her_Message_Bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding:  EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://gamingbolt.com/wp-content/uploads/2023/07/Marvels-Spider-Man-2-Mary-Jane-Watson.jpg'),
        ),
      ),
      title: const Text('Mi amor <3'),
    ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children:[
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
                  return (index % 2 == 0)
                  ? const HerMessageBubble()
                : const MyMessageBubble();

              }),
            ),




            Text ('Mundo'),
          ]
        ),
      ),
    );
  }
}