import 'package:flutter/material.dart';

class EnterOtp extends StatelessWidget {
  const EnterOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color.fromARGB(255, 115, 169, 173),
            // color: Colors.amber,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                      Text(
                        'Enter OTP',
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'An 4 digit code has been sent to asep@example.com',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 38),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                            hintStyle:  TextStyle(
                              color: Color.fromARGB(255, 115, 169, 173),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 115, 169, 173),
                              ),
                            ),
                            hintText: '',
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 0,
                            ),
                          ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                            hintStyle:  TextStyle(
                              color: Color.fromARGB(255, 115, 169, 173),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 115, 169, 173),
                              ),
                            ),
                            hintText: '',
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 0,
                            ),
                          ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                            hintStyle:  TextStyle(
                              color: Color.fromARGB(255, 115, 169, 173),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 115, 169, 173),
                              ),
                            ),
                            hintText: '',
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 0,
                            ),
                          ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                            hintStyle:  TextStyle(
                              color: Color.fromARGB(255, 115, 169, 173),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 115, 169, 173),
                              ),
                            ),
                            hintText: '',
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 0,
                            ),
                          ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 115, 169, 173)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(vertical: 12),
                              ),
                            ),
                            child: const Text('Send OTP'),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
