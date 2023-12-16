import 'package:credit_expo/data/data.dart';
import 'package:flutter/material.dart';

class CompanyHome extends StatefulWidget {
  const CompanyHome({super.key});

  @override
  State<CompanyHome> createState() => _CompanyHomeState();
}

class _CompanyHomeState extends State<CompanyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Company Credit Rating"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            Column(
              children: List.generate(
                  DataSet.financeCompanies.length,
                  (index) => ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text(
                            DataSet.financeCompanies[index].name
                                .substring(0, 2),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: Text(
                          DataSet.financeCompanies[index].ratings,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        title: Text(DataSet.financeCompanies[index].name),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
