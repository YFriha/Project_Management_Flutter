import 'package:flutter/material.dart';

class TeamCollaborationScreen extends StatefulWidget {
  @override
  _TeamCollaborationScreenState createState() => _TeamCollaborationScreenState();
}

class _TeamCollaborationScreenState extends State<TeamCollaborationScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<String> _messages = []; // Liste des messages

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Collaboration en Équipe'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Tapez votre message...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    _sendMessage();
                  },
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Ajoutez ici la logique de partage de fichiers.
            },
            child: Text('Partager un fichier'),
          ),
        ],
      ),
    );
  }

  void _sendMessage() {
    final String message = _messageController.text;
    if (message.isNotEmpty) {
      setState(() {
        _messages.add(message);
        _messageController.clear();
      });
    }
  }
}
