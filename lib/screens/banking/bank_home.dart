import 'package:credit_expo/data/data.dart';
import 'package:flutter/material.dart';

class BankingHome extends StatefulWidget {
  const BankingHome({super.key});

  @override
  State<BankingHome> createState() => _BankingHomeState();
}

class _BankingHomeState extends State<BankingHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Banking Credit Rating"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            Column(
              children: List.generate(
                  DataSet.banks.length,
                  (index) => ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text(
                            DataSet.banks[index].name.substring(0, 2),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: Text(
                          DataSet.banks[index].rating,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        title: Text(DataSet.banks[index].name),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
