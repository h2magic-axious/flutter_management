import 'package:flutter/material.dart';
import 'package:flutter_management/pages/Framework.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _Login(title: '登陆');
  }
}

class _Login extends StatefulWidget {
  const _Login({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<_Login> createState() => _LoginState();
}

class _LoginState extends State<_Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _username;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _buildTextFormField('用户名', const Icon(Icons.person), true),
              _buildTextFormField('密码', const Icon(Icons.lock), false),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: submit,
                  child: const Text('登陆'),
                ),
              )
            ],
          ),
        ));
  }

  TextFormField _buildTextFormField(String title, Icon icon, bool isUsername) {
    return TextFormField(
        decoration: InputDecoration(hintText: "输入$title", prefixIcon: icon),
        autofocus: isUsername ? true : false,
        obscureText: isUsername ? false : true,
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return '必须输入$title';
          }
          return null;
        },
        onSaved: (val) {
          if (isUsername) {
            _username = val!;
          } else {
            _password = val!;
          }
        });
  }

  submit() async {
    if (_formKey.currentState!.validate()) {
      var form = _formKey.currentState;
      form?.save();
      if (_username == 'admin' && _password == '123456') {
        Get.off(Framework());
      }
    }
  }
}
