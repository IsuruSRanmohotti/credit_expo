import 'package:credit_expo/screens/banking/bank_home.dart';
import 'package:credit_expo/screens/company/company_home.dart';
import 'package:credit_expo/screens/country/country_home.dart';
import 'package:credit_expo/screens/small_business/small_business_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.jpeg',
                  width: size.width * 0.75,
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const CountryHome(),
                        ));
                  },
                  size: size,
                  text: "Country Credit Rating",
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const CompanyHome(),
                        ));
                  },
                  size: size,
                  text: "Company Credit Rating",
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const BankingHome(),
                        ));
                  },
                  size: size,
                  text: "Banking Credit Rating",
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const SmallBusiness(),
                        ));
                  },
                  size: size,
                  text: "Small Business Credit Rating",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
