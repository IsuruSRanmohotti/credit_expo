import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:credit_expo/components/custom_button.dart';
import 'package:flutter/material.dart';

class SmallBusiness extends StatefulWidget {
  const SmallBusiness({super.key});

  @override
  State<SmallBusiness> createState() => _SmallBusinessState();
}

class _SmallBusinessState extends State<SmallBusiness> {
  String calculateRate(
      {double assets = 0,
      double debt = 0,
      double expenses = 0,
      double profit = 0}) {
    int assetPoints = 0;
    int debtPoints = 0;
    int expensePoint = 0;
    int profitPoint = 0;

    if (assets >= 1000000) {
      assetPoints = 50;
    } else if (assets >= 700000) {
      assetPoints = 40;
    } else if (assets >= 500000) {
      assetPoints = 30;
    } else if (assets >= 200000) {
      assetPoints = 20;
    } else if (assets >= 100000) {
      assetPoints = 10;
    } else {
      assetPoints = 5;
    }
    if (profit >= 1000000) {
      profitPoint = 50;
    } else if (profit >= 700000) {
      profitPoint = 40;
    } else if (profit >= 500000) {
      profitPoint = 30;
    } else if (profit >= 200000) {
      profitPoint = 20;
    } else if (profit >= 100000) {
      profitPoint = 10;
    } else {
      profitPoint = 5;
    }
    if (debt <= 100000) {
      debtPoints = 50;
    } else if (debt <= 300000) {
      debtPoints = 40;
    } else if (debt <= 500000) {
      debtPoints = 30;
    } else if (debt <= 700000) {
      debtPoints = 20;
    } else if (debt <= 1000000) {
      debtPoints = 10;
    } else {
      debtPoints = 5;
    }

    if (expenses <= 100000) {
      expensePoint = 50;
    } else if (expenses <= 300000) {
      expensePoint = 40;
    } else if (expenses <= 500000) {
      expensePoint = 30;
    } else if (expenses <= 700000) {
      expensePoint = 20;
    } else if (expenses <= 1000000) {
      expensePoint = 10;
    } else {
      expensePoint = 5;
    }

    int total = assetPoints + expensePoint + debtPoints + profitPoint;
    if (total >= 170) {
      return "A";
    } else if (total >= 140) {
      return "B";
    } else if (total >= 120) {
      return "C";
    } else if (total >= 80) {
      return "D";
    } else {
      return "SD";
    }
  }

  TextEditingController assetController = TextEditingController();
  TextEditingController debtController = TextEditingController();
  TextEditingController expensesController = TextEditingController();
  TextEditingController profitController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Small Business Credit Rating"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Divider(),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: assetController,
                  decoration: InputDecoration(
                      prefixText: "LKR",
                      label: const Text("Value Of Assets"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: debtController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixText: "LKR",
                      label: const Text("Debt Outstanding"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: expensesController,
                  decoration: InputDecoration(
                      prefixText: "LKR",
                      label: const Text("Daily Expenses"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: profitController,
                  decoration: InputDecoration(
                      prefixText: "LKR",
                      label: const Text("Monthly Profit"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                    size: size,
                    color: Colors.blue,
                    onTap: () {
                      if (assetController.text.isEmpty ||
                          debtController.text.isEmpty ||
                          expensesController.text.isEmpty ||
                          profitController.text.isEmpty) {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                          animType: AnimType.rightSlide,
                          title: 'Invalid Data',
                          desc: 'Please check your inputs',
                          btnCancelOnPress: () {},
                          btnOkOnPress: () {},
                        ).show();
                      } else {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.success,
                          animType: AnimType.rightSlide,
                          title: "Your Credit Rating Is",
                          desc: calculateRate(
                              assets: double.parse(assetController.text),
                              debt: double.parse(debtController.text),
                              expenses: double.parse(expensesController.text),
                              profit: double.parse(profitController.text)),
                          btnCancelOnPress: () {},
                          btnOkOnPress: () {},
                        ).show();
                      }
                    },
                    text: "Calculate Credit Rating")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
