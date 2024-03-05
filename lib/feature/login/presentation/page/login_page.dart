import 'package:catering/feature/dashboard/presentation/dashboard_page.dart';
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
                  Image.asset(
                    'assets/images/logo1.png',
                    height: 200,
                    width: 200,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  FormBuilderTextField(
                    name: 'Nama',
                    decoration: InputDecoration(
                        hintText: 'Masukkan nama',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                    validator: FormBuilderValidators.required(),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  FormBuilderTextField(
                    name: 'No Telp',
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Masukkan no telp',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                    validator: FormBuilderValidators.required(),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  FilledButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Dashboard()));
                      },
                      child: const Text(
                        "Masuk",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      )),
                  const SizedBox(
                    height: 16,
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
