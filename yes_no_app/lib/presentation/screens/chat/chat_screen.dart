import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';

import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_Message_Bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_Message_Bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

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

    final chatProvider = context.watch<ChatProvider>(); 


    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children:[
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index){
                final message = chatProvider.messageList[index];

                return (message.fromWho == FromWho.hers)
                    ? const HerMessageBubble()
                    : MyMessageBubble( message: message);
              }),),

            //caja de texto de mensajes

           MessageFieldBox(
            //onValue: (value) => chatProvider.sendMessage(value),
            onValue: chatProvider.sendMessage,

           ),

           
          ]
        ),
      ),
    );
  }
}