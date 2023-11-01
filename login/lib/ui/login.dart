import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            // image profile
            Image.asset(
              'images/097 face.png',
              width: 90.0,
              height: 90.0,
              color: Colors.white,
            ),

            // Form
            Container(
              height: 180.0,
              width: 380.0,
              color: Colors.white,
              child: Column(
                children: [
                  TextField(
                    controller: _userController,
                    decoration: const InputDecoration(
                      hintText: 'Username',
                      icon: Icon(Icons.person),
                    ),
                  ),
                  TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      icon: Icon(Icons.lock),
                    ),
                  ),

                  // Padding to create a space between the login and password
                  const Padding(
                    padding: EdgeInsets.all(10.5),
                  ),

                  Center(
                    child: Row(
                      children: [
                        // Login button
                        const SizedBox(
                          child: Padding(padding: EdgeInsets.only(left: 38.0)),
                        ),

                        ElevatedButton(
                          onPressed: () => debugPrint("Login"),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red),
                          ),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.9,
                            ),
                          ),
                        ),

                        // Clear Button

                        const SizedBox(
                          child: Padding(padding: EdgeInsets.only(left: 120.0)),
                        ),

                        ElevatedButton(
                          onPressed: () => debugPrint("Clear"),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red),
                          ),
                          child: const Text(
                            "Clear",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.9,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(14.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Welcome Jeffery",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                )
              ],
            ), // form ends here
          ],
        ),
      ),
    );
  }
}
