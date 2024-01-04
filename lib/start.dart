import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF5F52EE),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Image(
                image: AssetImage('assets/images/notumbenim.png'),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Hoşgeldiniz',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black)),
                child: const Center(
                  child: Text(
                    'Başla',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
