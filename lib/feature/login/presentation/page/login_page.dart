import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class LoginPage extends StatelessWidget {
  static const routeName = "/Login";
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(50),
                  ),
                  const Text(
                    "Welcome in Here",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  FormBuilderTextField(
                    name: 'Username',
                    decoration: InputDecoration(
                        hintText: 'Username',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                    validator: FormBuilderValidators.required(),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  FormBuilderTextField(
                    name: 'Password',
                    decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                    validator: FormBuilderValidators.required(),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  FilledButton(onPressed: () {}, child: const Text("Login"))
                ]),
          ),
        ),
      ),
    );
  }
}
