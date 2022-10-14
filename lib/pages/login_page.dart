import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            _Logo(),
            _Form(),
            _Labels(),
            Text(
              'Términos y condiciones de uso',
              style: TextStyle(
                fontWeight: FontWeight.w200,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(
          top: 50,
        ),
        width: 170,
        child: Column(
          children: const [
            Image(
              image: AssetImage('assets/tag-logo.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Messenger',
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({Key? key}) : super(key: key);

  @override
  State<_Form> createState() {
    return _FormState();
  }
}

class _FormState extends State<_Form> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Column(
        children: [
          const TextField(),
          const TextField(),
          MaterialButton(
            onPressed: () {},
            child: const Text('touch me'),
          )
        ],
      ),
    );
  }
}

class _Labels extends StatelessWidget {
  const _Labels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          const Text(
            'tienes cuenta?',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'crea una cuenta ahora!',
            style: TextStyle(
              color: Colors.blue[600],
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
