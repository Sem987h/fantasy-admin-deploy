import "package:fantasy_admin_internal/app/screens/auth_screen/otp_screen.dart";
import "package:fantasy_admin_internal/app/theme/theme_constans.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String route = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // late AuthProvider provider;
  TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // provider = Provider.of<AuthProvider>(context, listen: false);
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: screenHeight / 3,
            width: screenWidth > 600 ? screenWidth / 3 : screenWidth / 1.2,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  blurStyle: BlurStyle.outer,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              // border: Border.all(color: Colors.grey),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    color: AppColors.appBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                hs(),
                hs(),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Mobile Number',
                    style: TextStyle(
                      color: AppColors.appBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                hs(),
                TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Mobile Number',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                    ),
                  ),
                ),
                hs(),
                hs(),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () => context.go(OtpScreen.route),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Generate OTP",
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

  // Future<void> login() async {
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
  //   await provider.login(phoneController.text).then(
  //     (value) {
  //       Navigator.pop(context);
  //       if (value) {
  //         context.go('/otp');
  //       }
  //     },
  //   );
  // }
}
