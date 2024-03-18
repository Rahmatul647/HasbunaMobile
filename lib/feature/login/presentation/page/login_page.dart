import 'package:catering/feature/dashboard/presentation/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class LoginPage extends StatelessWidget {
  static const routeName = "/Login";
   LoginPage({super.key});

  TextEditingController phoneNumber = TextEditingController();
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: FormBuilder(
              key: _formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(25),
                    ),
                    const Text(
                      "Welcome in Here",
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Image.asset(
                      'assets/images/logo1.png',
                      height: 200,
                      width: 200,
                    ),
                    const SizedBox(
                      height: 25,
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
                        controller: phoneNumber,
                        keyboardType: TextInputType.number,
                        // onChanged: (value) {
                        //   if (value != null) {
                        //     value.length <= 12;
                        //   }
                        // },
                        decoration: InputDecoration(
                            hintText: 'Masukkan no telp',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(errorText: 'hjjjjj'),
                          FormBuilderValidators.equalLength(12),
                        ])),
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
      ),
    );
    
  }
}
