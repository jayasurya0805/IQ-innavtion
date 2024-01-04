// // ignore_for_file: camel_case_types, use_super_parameters, lines_longer_than_80_chars, unused_local_variable
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:qr_innovations/Riverpod/signup_state.dart';
// import 'package:qr_innovations/designs/border_box_button_decorations.dart';
// import 'package:qr_innovations/designs/colors.dart';
// import 'package:qr_innovations/designs/font_styles.dart';

// class Signup_screen extends ConsumerStatefulWidget {
//   const Signup_screen({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _Signup_screenState();
// }

// TextEditingController email = TextEditingController();
// TextEditingController name = TextEditingController();
// TextEditingController password = TextEditingController();
// TextEditingController phone = TextEditingController();

// class _Signup_screenState extends ConsumerState<Signup_screen> {
//   @override
//   Widget build(BuildContext context) {
//     final provider = ref.watch(signupProvider);
//     final readProvider = ref.read(signupProvider);
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height,
//               width: MediaQuery.of(context).size.width,
//               decoration: const BoxDecoration(
//                 color: AppColors.popupbarbackgroundcolor,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(50),
//                   topRight: Radius.circular(50),
//                   bottomLeft: Radius.circular(50),
//                   bottomRight: Radius.circular(50),
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(25),
//                 child: SingleChildScrollView(
//                   child: SizedBox(
//                     height: MediaQuery.of(context).size.height,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const SizedBox(
//                           height: 50,
//                         ),
//                         Center(
//                           child: Container(
//                             width: MediaQuery.of(context).size.width / 2 + 150,
//                             height: 50,
//                             decoration: BorderBoxButtonDecorations.topbar,
//                             child: Row(
//                               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 IconButton(
//                                   onPressed: () => Navigator.pop(context),
//                                   icon: const Icon(
//                                     Icons.arrow_back_ios_new_outlined,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   width: 100,
//                                 ),
//                                 const Text(
//                                   'SIGNUP',
//                                   style: TextStyles.buttonfontStyle,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 30,
//                         ),
//                         // Center(
//                         //   child: ClipOval(
//                         //     child: SizedBox.fromSize(
//                         //       size: const Size.fromRadius(60),
//                         //       child: Image.asset(
//                         //         'assets/videocall.png',
//                         //         fit: BoxFit.cover,
//                         //       ),
//                         //     ),
//                         //   ),
//                         // ),
//                         const Text(
//                           'Name',
//                           style: TextStyles.TextfieldFontStyle,
//                         ),
//                         const SizedBox(height: 5),
//                         TextField(
//                           onChanged: (value) {
//                             setState(() {
//                               provider.nameError = '';
//                             });
//                           },
//                           controller: name,
//                           decoration: InputDecoration(
//                             errorText: provider.nameError == ''
//                                 ? null
//                                 : provider.nameError,
//                             filled: true,
//                             fillColor: AppColors.textfieldfillcolor,
//                             contentPadding: const EdgeInsets.all(8),
//                             focusedBorder: UnderlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Color.fromARGB(174, 180, 180, 180),
//                               ),
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Color.fromARGB(174, 180, 180, 180),
//                               ),
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         const Text(
//                           'Mobile no',
//                           style: TextStyles.TextfieldFontStyle,
//                         ),
//                         const SizedBox(height: 5),
//                         TextField(
//                           onChanged: (value) {
//                             setState(() {
//                               provider.phoneError = '';
//                             });
//                           },
//                           controller: phone,
//                           decoration: InputDecoration(
//                             errorText: provider.phoneError == ''
//                                 ? null
//                                 : provider.phoneError,
//                             filled: true,
//                             fillColor: AppColors.textfieldfillcolor,
//                             contentPadding: const EdgeInsets.all(8),
//                             focusedBorder: UnderlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Color.fromARGB(174, 180, 180, 180),
//                               ),
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Color.fromARGB(174, 180, 180, 180),
//                               ),
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         const Text(
//                           'Email',
//                           style: TextStyles.TextfieldFontStyle,
//                         ),
//                         const SizedBox(height: 5),
//                         TextField(
//                           onChanged: (value) {
//                             setState(() {
//                               provider.emailError = '';
//                             });
//                           },
//                           controller: email,
//                           decoration: InputDecoration(
//                             errorText: provider.emailError == ''
//                                 ? null
//                                 : provider.emailError,
//                             filled: true,
//                             fillColor: AppColors.textfieldfillcolor,
//                             contentPadding: const EdgeInsets.all(8),
//                             focusedBorder: UnderlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Color.fromARGB(174, 180, 180, 180),
//                               ),
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Color.fromARGB(174, 180, 180, 180),
//                               ),
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         const Text(
//                           'Password',
//                           style: TextStyles.TextfieldFontStyle,
//                         ),
//                         const SizedBox(height: 5),
//                         TextField(
//                           decoration: InputDecoration(
//                             filled: true,
//                             fillColor: AppColors.textfieldfillcolor,
//                             contentPadding: const EdgeInsets.all(8),
//                             focusedBorder: UnderlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Color.fromARGB(174, 180, 180, 180),
//                               ),
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 width: 2,
//                                 color: Color.fromARGB(174, 180, 180, 180),
//                               ),
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                           ),
//                         ),

//                         const Spacer(),
//                         GestureDetector(
//                           onTap: () {},
//                           child: Container(
//                             // width: MediaQuery.of(context).size.width / 2 + 100,
//                             height: 50,
//                             decoration: BoxDecoration(
//                               boxShadow: const [
//                                 BoxShadow(
//                                   blurRadius: 2,
//                                 ),
//                               ],
//                               borderRadius: BorderRadius.circular(10),
//                               color: AppColors.orange,
//                             ),
//                             child: const Center(
//                               child: Text(
//                                 'Submit',
//                                 style: TextStyles.buttonfontStyle,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
