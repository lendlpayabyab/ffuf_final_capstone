import 'package:ffuf_final_capstone/models/user/_export.dart';
import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:ffuf_final_capstone/widgets/_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BusinessCardBuilder extends StatelessWidget {
  const BusinessCardBuilder({
    required this.header,
    required this.user,
    Key? key,
  }) : super(key: key);

  final String header;
  final User user;

  @override
  Widget build(BuildContext context) {
    return ResponsiveSafeArea(
      builder: (context, height, width) => Scaffold(
        backgroundColor: AppTheme.secondaryColor,
        body: Padding(
          padding: kGlobalAppPadding,
          child: SingleChildScrollView(
            child: Container(
              padding: kGlobalAppPadding.copyWith(top: 30),
              color: Colors.white,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      header,
                      style: AppTheme.theme.textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 10),
                    ProfileCardBuilder(user: user, contextSafeWidth: width,),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          user.qrImageUrl,
                          width: width * 0.8,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Adresse',
                      style: AppTheme.theme.textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width * .17,
                          child: SvgPicture.asset('assets/icons/location.svg'),
                        ),
                        const SizedBox(width: 18),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: width * 0.02),
                            Text('Flutter Bootcamp', style: AppTheme.theme.textTheme.labelLarge),
                            Text(user.address, style: AppTheme.theme.textTheme.labelSmall),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'Kontakt',
                      style: AppTheme.theme.textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width * .17,
                          child: SvgPicture.asset('assets/icons/user_black.svg'),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: width * .01),
                            Text(
                              'T: ${user.telephone}',
                              style: AppTheme.theme.textTheme.labelLarge,
                            ),
                            Text(
                              'F: ${user.fax}',
                              style: AppTheme.theme.textTheme.labelLarge,
                            ),
                            Text(
                              'M: ${user.mobile}',
                              style: AppTheme.theme.textTheme.labelLarge,
                            ),
                            Text(
                              'E: ${user.email}',
                              style: AppTheme.theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'www.flutter-bootcamp.com',
                          style: AppTheme.theme.textTheme.labelSmall!.copyWith(color: const Color(0xFF00A4EA)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
