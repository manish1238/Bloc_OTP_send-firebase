import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth_cubit/auth_cubit.dart';
import '../auth_cubit/auth_state.dart';
import '../otp_verify/otp_verify.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);
  static String verify = '';
  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  String countryCode = '';
  //for taking number from user
  TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    countryCode = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBjlNAbZXlbX5u7LgcEg_pRYWxwaZCWRbifw&usqp=CAU',
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Phone Verification",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "We need to register your phone without getting started!",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 100,
                      child: CountryCodePicker(
                        onChanged: (CountryCode code) {
                          // path flag of country
                          countryCode = code.dialCode!;
                        },
                        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                        initialSelection: 'IN',
                        favorite: ['+91', 'IN'],
                        // optional. Shows only country name and flag
                        showCountryOnly: false,
                        // optional. Shows only country name and flag when popup is closed.
                        showOnlyCountryWhenClosed: false,
                        // optional. aligns the flag and the Text left
                        alignLeft: false,
                      ),
                    ),
                    const Text(
                      "|",
                      style: TextStyle(fontSize: 33, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone",
                      ),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is AuthCodeSentState) {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const MyVerify()));
                  }
                },
                builder: (context, state) {
                  if (state is AuthLoadingState) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CupertinoButton(
                      onPressed: () {
                        String phoneNumber =
                            countryCode + phoneController.text.toString();
                        BlocProvider.of<AuthCubit>(context)
                            .sendOTP(phoneNumber);
                      },
                      color: Colors.blue,
                      child: const Text("Sign In"),
                    ),
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
