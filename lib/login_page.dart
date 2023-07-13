import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? username;
  String? password;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(flex: 1),
              Expanded(
                flex: 6,
                child: Image.asset("assets/images/zayıflama.png"),
              ),
              Expanded(
                  flex: 1,
                  child: loginPageMainTextField(
                      "Kullanıcı Adı", "Kullanıcı Adı Giriniz")),
              Expanded(
                  flex: 1,
                  child: loginPageMainTextField("Şifre", "Şifrenizi Giriniz")),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    loginPageMaterialButton(
                      "Üye Ol",
                      onPressed: () {},
                    ),
                    loginPageMaterialButton(
                      "Şifremi Unuttum",
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: _loginPageElevatedButton(
                    Colors.red,
                    "Giriş Yap",
                    onPressed: () {},
                  )),
              const Spacer(
                flex: 4,
              )
            ],
          ),
        ),
      ),
    );
  }

  MaterialButton loginPageMaterialButton(String materialButtonText,
      {required VoidCallback onPressed}) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(materialButtonText),
    );
  }

  TextFormField loginPageMainTextField(String labelText, String labelError) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.pink),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(fontSize: 27, color: Colors.pink),
        border: const OutlineInputBorder(),
      ),
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return labelError;
        } else {
          return null;
        }
      },
      onSaved: (value) {
        username = value;
      },
    );
  }

  SizedBox _loginPageElevatedButton(Color color, String text,
      {required VoidCallback onPressed}) {
    var loginPageElevatedButtonStyle = Theme.of(context)
        .textTheme
        .headlineSmall
        ?.copyWith(color: Colors.white);

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(), backgroundColor: color),
        onPressed: onPressed,
        child: FittedBox(
          child: Text(
            text,
            style: loginPageElevatedButtonStyle,
          ),
        ),
      ),
    );
  }
}
