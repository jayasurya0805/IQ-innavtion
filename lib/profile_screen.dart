// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_innovations/designs/colors.dart';
import 'package:qr_innovations/designs/font_styles.dart';

class Profile_Screen extends ConsumerStatefulWidget {
  const Profile_Screen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends ConsumerState<Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        // leading: Ic,
        title: const Text(
          'Profile',
          style: TextStyles.appbarStyle,
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.secondaryColor,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SvgPicture.asset(
                      'assets/Profile.svg',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const Text(
                    'Name',
                    style: TextStyles.titleFontStyle,
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Surya',
                    style: TextStyles.noColorNoSizeFontStyle,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Mobile Number',
                    style: TextStyles.titleFontStyle,
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    '9874056123',
                    style: TextStyles.noColorNoSizeFontStyle,
                  ),
                  const SizedBox(height: 20),
                  const Text('Email ID', style: TextStyles.titleFontStyle),
                  const SizedBox(height: 5),
                  const Text(
                    'surya@gmail.com',
                    style: TextStyles.noColorNoSizeFontStyle,
                  ),
                  const SizedBox(height: 20),
                  const Text('Address', style: TextStyles.titleFontStyle),
                  const SizedBox(height: 5),
                  const Text(
                    '11, Anna Nagar Chennai',
                    style: TextStyles.noColorNoSizeFontStyle,
                  ),
                ],
              ),
            ),

            // SizedBox(
            //   height: MediaQuery.of(context).size.height / 3 + 60,
            // ),
          ],
        ),
      ),
    );
  }
}
