import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/company.dart';
import 'package:flutter_application_1/models/company_api.dart';
import 'package:flutter_application_1/view/wigets/company_page.dart';
import 'package:flutter_application_1/view/wigets/list_elements.dart';

class MainPieScreen extends StatefulWidget {
  const MainPieScreen({super.key});

  @override
  State<MainPieScreen> createState() => _MainPieScreenState();
}

class _MainPieScreenState extends State<MainPieScreen> {
  late Company company;
  bool _isLoading = true;

  List<PieChartSectionData> listPies = [
    apple,
    amazon,
    google,
    microsoft,
    facebook
  ];

  List<Company> listCompany = [];

  @override
  void initState() {
    super.initState();

    getCompany();
  }

  Future<void> getCompany() async {
    for (var i in listPies) {
      company = await CompanyApi.getCompany(i.title);
      listCompany.add(company);
    }
    for (var element in Iterable.generate(listPies.length)) {
      listPies[element] = listPies[element]
          .copyWith(value: double.parse(listCompany[element].capitaliszation));
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('All Company'),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : PieChart(PieChartData(
              sections: listPies,
              centerSpaceRadius: 40,
              centerSpaceColor: Colors.white,
              sectionsSpace: 5,
              pieTouchData: PieTouchData(
                  enabled: true,
                  touchCallback: (event, touchResponse) {
                    if (event is FlTapUpEvent &&
                        touchResponse is PieTouchResponse) {
                      PieTouchedSection? section = touchResponse.touchedSection;
                      if (section != null) {
                        Company company =
                            listCompany[section.touchedSectionIndex];
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return CompanyPage(
                              capitaliszation:
                                  company.capitaliszation.toString(),
                              description: company.description,
                              name: company.name,
                              symbol: company.symbol,
                              industry: company.industry);
                        }));
                      }
                      ;
                    }
                  }),
              borderData: MyBorderData())),
    );
  }
}

class MyBorderData extends FlBorderData {
  MyBorderData()
      : super(border: Border.all(width: 2, color: Colors.red), show: true);
}
