import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                        'Forgot Password',
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Dont worry! It happens. please enter the address assosiated with your account',
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
                            hintText: 'Email or phone number',
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
