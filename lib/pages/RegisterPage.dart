import 'package:flutter/material.dart';
import 'package:lapor_book/components/styles.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  String? nama;
  String? email;
  String? noHP;

  final TextEditingController _password = TextEditingController();

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 80),
                    Text('Register', style: headerStyle(level:1)),
                    Container(
                      child: const Text(
                        'Create your profile to start your journey',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              // di sini nanti komponen inputnya
                            ],
                          )),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Sudah punya akun? '),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: const Text('Login di sini',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                  ],
                ),
              ),
      ),
    );
  }
}