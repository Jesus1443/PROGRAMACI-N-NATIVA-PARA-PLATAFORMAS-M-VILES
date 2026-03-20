import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Padding(
        padding: const EdgeInsets.all(5.0),
        child: CircleAvatar(backgroundImage: 
        NetworkImage('https://content.emarket.pe/common/collections/standard/e6/c7/e6c7d2be-59e7-481c-aa7a-096185770e8e.jpg'),),
      ),
        title: const Text('Chat'),
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
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Text('Indice: $index');
              },
            )), 
          ]
        ),
      ),
    );
  }
}