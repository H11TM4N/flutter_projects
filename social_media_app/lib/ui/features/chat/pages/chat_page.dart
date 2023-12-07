import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:social_media_app/data/data.dart';
import 'package:social_media_app/logic/services/services.dart';
import 'package:social_media_app/ui/widgets/widgets.dart';

class ChatPage extends StatefulHookWidget {
  final String userEmail;
  final String userId;
  const ChatPage({
    super.key,
    required this.userEmail,
    required this.userId,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late TextEditingController _messageController;
  final _chatSevice = ChatService();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void sendMessage() async {
    if (_messageController.text.isNotEmpty) {
      await _chatSevice.sendMessage(
        widget.userId,
        _messageController.text,
      );
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    _messageController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.userEmail),
      ),
      body: Column(
        children: [
          Expanded(
            child: _buildMessageList(),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildMessageList() {
    return StreamBuilder(
      stream: _chatSevice.getMessages(
        widget.userId,
        _auth.currentUser!.uid,
      ),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error ${snapshot.error}');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView(
          children: snapshot.data!.docs
              .map((document) => _buildMessageItem(document))
              .toList(),
        );
      },
    );
  }

  Widget _buildMessageItem(DocumentSnapshot document) {
    Json data = document.data() as Json;

    var alignment = (data['senderId'] == _auth.currentUser!.uid)
        ? Alignment.centerRight
        : Alignment.centerLeft;

    return Container(
      alignment: alignment,
      child: Column(
        children: [
          Text(data['senderEmail']),
          Text(data['message']),
        ],
      ),
    );
  }

  Widget _buildMessageInput() {
    return Row(
      children: [
        Expanded(
          child: CustomTextfield(
            controller: _messageController,
            hintText: 'Enter message',
            isObscure: false,
          ),
        ),
        MaterialButton(
          onPressed: () {
            sendMessage();
          },
          child: const Icon(Icons.send),
        )
      ],
    );
  }
}
