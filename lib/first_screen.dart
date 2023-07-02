import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 600,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/shutterstock_1658616850-min-scaled.jpg',
                ),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              height: 300,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 60),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(500),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x00dbdfaa).withOpacity(0.3),
                              offset: const Offset(0, 2),
                              blurRadius: 6.0,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/logo-ewaste.png',
                          height: 80,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        'Life-Waste',
                        style: TextStyle(
                          color: Color.fromARGB(255, 115, 169, 173),
                          fontSize: 32,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text('Make a better life with less E-waste')
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 115, 169, 173)),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 36, vertical: 12),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up');
                    },
                    child: const Text(
                      'Get started for free',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
