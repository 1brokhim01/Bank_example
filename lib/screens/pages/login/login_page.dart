import 'package:flutter/material.dart';
import 'package:home25/core/constants/constants.dart';
import 'package:home25/core/constants/p_m_const.dart';
import 'package:home25/screens/pages/homee/homee_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.height * 1,
        color: Kprimary.kPRimary1,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    hintText: "Enter Your ID",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Kprimary.kPRimary1,
                  fixedSize: const Size(223, 40),
                  side: const BorderSide(color: Colors.white),
                ),
                child: Text("Next"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
