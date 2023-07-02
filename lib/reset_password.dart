import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
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
                          'Reset Password',
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Enter your new password',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
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
                        TextField(
                          decoration: InputDecoration(
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 115, 169, 173),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 115, 169, 173),
                              ),
                            ),
                            hintText: 'New Password',
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 115, 169, 173),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 115, 169, 173),
                              ),
                            ),
                            hintText: 'Confirm New Password',
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 0,
                            ),
                          ),
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
