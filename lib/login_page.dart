// ignore_for_file: always_use_package_imports, use_super_parameters, avoid_redundant_argument_values, unawaited_futures, lines_longer_than_80_chars, eol_at_end_of_file

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_innovations/designs/colors.dart';
import 'package:qr_innovations/designs/navigation_style.dart';
import 'package:qr_innovations/home_page.dart';
import 'package:qr_innovations/login_service.dart';
import 'package:qr_innovations/riverpod/signup_state.dart';

// Project imports:
import 'constants.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _userIDTextCtrl = TextEditingController();
  final _password = TextEditingController();
  // final _userIDTextCtrl = TextEditingController(text: 'user_id');
  final _passwordVisible = ValueNotifier<bool>(false);
  //
  // @override
  // void initState() {
  //   super.initState();
  //
  //   getUniqueUserId().then((userID) async {
  //     setState(() {
  //       _userIDTextCtrl.text = userID;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            logo(),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 174, 242, 243),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    userIDEditor(),
                    const SizedBox(height: 20),
                    passwordEditor(),
                    SizedBox(height: MediaQuery.of(context).size.height / 10),

                    signInButton(),
                    const SizedBox(height: 20),
                    // line1(),
                    const SizedBox(height: 10),
                    forgotpassword(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget logo() {
    return Center(
      child: Image.asset(
        'assets/logo.png',
        height: 400,
        width: 400,
      ),
    );
  }

  Widget line() {
    return const Center(
      child: Text(
        'Innovation',
        style: TextStyle(
          fontSize: 30,
          color: Colors.blue,
          fontWeight: FontWeight.w700,
          fontFamily: 'Montserrat',
        ),
      ),
    );
  }

  Widget userIDEditor() {
    return TextFormField(
      controller: _userIDTextCtrl,
      decoration: InputDecoration(
        labelText: 'Phone Number',
        prefixIcon: const Icon(Icons.person),
        filled: true,
        fillColor: AppColors.whiteColor,
        contentPadding: const EdgeInsets.all(8),
        focusedBorder: UnderlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 3,
            color: AppColors.textfieldColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget passwordEditor() {
    return ValueListenableBuilder<bool>(
      valueListenable: _passwordVisible,
      builder: (context, isPasswordVisible, _) {
        return TextFormField(
          controller: _password,
          decoration: InputDecoration(
            labelText: 'Password',
            prefixIcon: const Icon(Icons.lock),
            filled: true,
            fillColor: AppColors.whiteColor,
            contentPadding: const EdgeInsets.all(8),
            focusedBorder: UnderlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 3,
                color: AppColors.textfieldColor,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      },
    );
  }

  Widget signInButton() {
    final provider = ref.watch(loginProvider);
    final readProvider = ref.read(loginProvider);
    return GestureDetector(
      // onTap: _userIDTextCtrl.text.isEmpty
      //     ? null
      //     : () async {
      //         login(
      //           userID: _userIDTextCtrl.text,
      //           userName: 'user_${_userIDTextCtrl.text}',
      //         ).then((value) {
      //           onUserLogin();

      //           Navigator.push(context, RouteDesign(route: const HomePage()));
      //         });
      //       },

      onTap: () {
        FocusScope.of(context).unfocus();
        if (!provider.loading) {
          readProvider
              .login(
            context: context,
            userID: _userIDTextCtrl.text,
            password: _password.text,
          )
              .then((value) {
            onUserLogin();
          });
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2 + 100,
        height: 50,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: const Center(
          child: Text(
            'Submit',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
    );
  }

  Widget line1() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Don't have an account?",
            style: TextStyle(
              color: Color.fromARGB(255, 1, 15, 26),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          GestureDetector(
            // onTap: () {
            //   Navigator.pushNamed(
            //     context,
            //     PageRouteNames.signup,
            //   );
            // },
            child: const Text(
              '  SignUp',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget forgotpassword() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              PageRouteNames.forgotpassword,
            ),
            child: const Text(
              'Forgot Password..?',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
