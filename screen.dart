import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color.fromARGB(255, 70, 114, 71),
          Color.fromARGB(255, 237, 238, 186)
        ],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            const SizedBox(height: 50),
            _inputField("Username", usernameController),
            const SizedBox(height: 20),
            _inputField("Password", passwordController, isPassword: true),
            const SizedBox(height: 25),
            _extra(),
            _loginBtn(),
            const SizedBox(height: 40),
            _extraText(),
            _signBtn(),
          ],
        ),
      ),
    );
  }

  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 70, 114, 71), width: 2),
          shape: BoxShape.circle),
      child: const Icon(Icons.person,
          color: Color.fromARGB(255, 70, 114, 71), size: 100),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {isPassword = false}) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Color.fromARGB(255, 70, 114, 71)));

    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Color.fromARGB(255, 70, 114, 71)),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }

  Widget _extra() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Forgot Password?",
          style:
              TextStyle(fontSize: 13, color: Color.fromARGB(255, 70, 114, 71)),
        ),
      ],
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Username : ${usernameController.text}");
        debugPrint("Password : ${passwordController.text}");
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 237, 238, 186),
        backgroundColor: const Color.fromARGB(255, 70, 114, 71),
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 20),
      ),
      child: const SizedBox(
          width: 180,
          child: Text(
            "Login ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
    );
  }

  Widget _extraText() {
    return const SizedBox(
        child: Text(
      "Don't have an account?",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 70, 114, 71)),
    ));
  }

  Widget _signBtn() {
    return const Text("Sign Up",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 70, 114, 71),
        ));
  }
}
