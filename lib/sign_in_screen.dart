import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
          Positioned(
            top: 104,
            right: 10,
            child: SizedBox(
              height: 240,
              child: Image.asset('assets/fadsf.png'),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(fontSize: 32, color: Colors.white),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Hi Greenie\nWe’ve missed you!',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
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
                    crossAxisAlignment: CrossAxisAlignment.end,
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
                          hintText: 'Enter your email',
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 14,
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
                          hintText: 'Enter your password',
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 0,
                          ),
                        ),
                      ),
                      // const SizedBox(
                      //   height: 14,
                      // ),
                      TextButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.zero),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 115, 169, 173),
                          ),
                        ),
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
                          child: const Text('Login'),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            height: 1,
                            color: const Color.fromARGB(255, 115, 169, 173),
                          ),
                          const Text(
                            'Or',
                            style: TextStyle(
                              color: Color.fromARGB(255, 115, 169, 173),
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 1,
                            color: const Color.fromARGB(255, 115, 169, 173),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(vertical: 14),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            foregroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 115, 169, 173),
                            ),
                            side: MaterialStateProperty.all(
                              const BorderSide(
                                color: Color.fromARGB(255, 115, 169, 173),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Login with Google'),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(vertical: 14),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            foregroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 115, 169, 173),
                            ),
                            side: MaterialStateProperty.all(
                              const BorderSide(
                                color: Color.fromARGB(255, 115, 169, 173),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Login with Facebook'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Not a member? ',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.zero),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Sign up now',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 115, 169, 173),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
