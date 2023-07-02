import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    final TextEditingController fullnameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController valpassController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color.fromARGB(255, 115, 169, 173),
            // color: Colors.amber,
          ),
          Positioned(
            top: 10,
            right: 10,
            child: SizedBox(
              height: 240,
              child: Image.asset('assets/fadsf.png'),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
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
                          'Sign Up',
                          style: TextStyle(fontSize: 32, color: Colors.white),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Hi Greenie\nLet’s sign up!',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Form(
                    key: formKey,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 38),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 115, 169, 173),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: TextFormField(
                              validator: (value) => value!.isEmpty
                                  ? 'Please enter your full name'
                                  : null,
                              controller: fullnameController,
                              decoration: const InputDecoration(
                                border: InputBorder
                                    .none, // Hilangkan border bawaan TextFormField
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 115, 169, 173),
                                ),
                                hintText: 'Enter your full name',
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 115, 169, 173),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: TextFormField(
                              validator: (value) => value!.isEmpty
                                  ? 'Please enter your email'
                                  : null,
                              controller: emailController,
                              decoration: const InputDecoration(
                                border: InputBorder
                                    .none, // Hilangkan border bawaan TextFormField
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 115, 169, 173),
                                ),
                                hintText: 'Enter your email',
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 115, 169, 173),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: TextFormField(
                              validator: (value) => value!.isEmpty
                                  ? 'Please enter your password'
                                  : null,
                              controller: passwordController,
                              decoration: const InputDecoration(
                                border: InputBorder
                                    .none, // Hilangkan border bawaan TextFormField
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 115, 169, 173),
                                ),
                                hintText: 'Enter your password',
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 115, 169, 173),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Please enter your password';
                                } else if (val != passwordController.text) {
                                  return 'Password does not match';
                                } else {
                                  return null;
                                }
                              },
                              controller: valpassController,
                              decoration: const InputDecoration(
                                border: InputBorder
                                    .none, // Hilangkan border bawaan TextFormField
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 115, 169, 173),
                                ),
                                hintText: 'Enter your password again',
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 0,
                                ),
                              ),
                            ),
                          ),
                          // const SizedBox(
                          //   height: 14,
                          // ),
                          Row(
                            children: [
                              const Text(
                                'By signing up, you’re agree to our ',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              TextButton(
                                style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          EdgeInsets.zero),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Terms & Conditions',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 115, 169, 173),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                // Validate returns true if the form is valid, or false otherwise.
                                if (formKey.currentState!.validate()) {
                                  // If the form is valid, display a snackbar. In the real world,
                                  // you'd often call a server or save the information in a database.
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Processing Data')),
                                  );
                                }
                              },
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
                              child: const Text('Sign Up'),
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
                              child: const Text('Sign up with Google'),
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
                              child: const Text('Sign up with Facebook'),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Joined us before? ',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Container(
                                width: 30,
                                child: TextButton(
                                  style: ButtonStyle(
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                            EdgeInsets.zero),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 115, 169, 173),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
