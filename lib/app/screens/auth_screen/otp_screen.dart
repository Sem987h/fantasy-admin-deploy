import 'package:fantasy_admin_internal/app.dart';
import 'package:fantasy_admin_internal/app/theme/theme_constans.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  static const String route = '/verify';

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  // late AuthProvider provider;

  final pinController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // provider = Provider.of<AuthProvider>(context, listen: false);
  }

  @override
  void dispose() {
    //   phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    const focusedBorderColor = Colors.blue;
    final fillColor = Colors.grey.shade100;

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
        color: Colors.grey.shade200,
      ),
    );
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.topLeft,
            height: screenHeight / 3,
            width: screenWidth > 600 ? screenWidth / 3 : screenWidth / 1.2,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2,
                  blurStyle: BlurStyle.outer,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Enter OTP',
                  style: TextStyle(
                    color: AppColors.appBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                hs(),
                const Text(
                  'A 6-Digit Code has been sent you on Mobile Number',
                  style: TextStyle(
                    color: AppColors.appBlack,
                    // fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                hs(),
                hs(),
                Center(
                  child: Pinput(
                    controller: pinController,
                    length: 6,
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: focusedBorderColor),
                      ),
                    ),
                    submittedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        color: fillColor,
                        borderRadius: BorderRadius.circular(19),
                        border: Border.all(color: focusedBorderColor),
                      ),
                    ),
                    errorPinTheme: defaultPinTheme.copyBorderWith(
                      border: Border.all(color: Colors.redAccent),
                    ),
                  ),
                ),
                hs(),
                hs(),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () => context.go(App.route),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Verify OTP",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Future<void> otp() async {
  //   // if (!_formKey.currentState!.validate()) return;
  //   // if (!Utils.isPhone(phoneController.text)) {
  //   //   setState(() {
  //   //     emailError = "Please enter valid phone number";
  //   //   });
  //   //   return;
  //   // }
  //   showDialog(
  //     barrierDismissible: false,
  //     context: context,
  //     builder: (context) => const Center(child: CircularProgressIndicator()),
  //   );
  //   await provider.otp(pinController.text).then(
  //     (value) {
  //       Navigator.pop(context);
  //       if (value) {
  //         context.go('/home');
  //       }
  //     },
  //   );
  // }
}
