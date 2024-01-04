import 'package:flutter/material.dart';

class NotlarimSayfasi extends StatefulWidget {
  const NotlarimSayfasi({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _NotlarimSayfasiState createState() => _NotlarimSayfasiState();
}

class _NotlarimSayfasiState extends State<NotlarimSayfasi> {
  final TextEditingController _notController = TextEditingController();
  List<String> notlar = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5F52EE),
        title: const Text(
          'Notlarım',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: notlar.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(
                      notlar[index],
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          notlar.removeAt(index);
                        });
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _notController,
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: const InputDecoration(
                hintText: 'Yeni not ekleyin...',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                notlar.add(_notController.text);
                _notController.clear();
              });
            },
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFF5F52EE),
            ),
            child: const Text('Ekle'),
          ),
        ],
      ),
    );
  }
}
