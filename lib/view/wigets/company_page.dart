import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CompanyPage extends StatelessWidget {
  final String capitaliszation;
  final String description;
  final String name;
  final String symbol;
  final String industry;

  const CompanyPage(
      {super.key,
      required this.capitaliszation,
      required this.description,
      required this.name,
      required this.symbol,
      required this.industry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(name),
        ),
        body: Container(
          color: Colors.grey,
          child: Center(
            child: Container(
              color: Colors.white30,
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.1,
                      color: Colors.white60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                              flex: 1,
                              child: AutoSizeText(symbol,
                                  textAlign: TextAlign.center,
                                  softWrap: true,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold))),
                          Expanded(
                              flex: 3,
                              child: AutoSizeText.rich(
                                TextSpan(children: [
                                  const TextSpan(
                                    text: 'Capitaliszation: ',
                                  ),
                                  TextSpan(
                                      text: capitaliszation,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(text: ' \$')
                                ]),
                                textAlign: TextAlign.center,
                              ))
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.5,
                      color: Colors.white60,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: AutoSizeText(
                            description,
                            textAlign: TextAlign.justify,
                            softWrap: true,
                            minFontSize: 16,
                            style: const TextStyle(wordSpacing: 1),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.1,
                      color: Colors.white60,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: AutoSizeText.rich(
                            TextSpan(children: [
                              const TextSpan(text: 'Industry: '),
                              TextSpan(
                                  text: industry,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold))
                            ]),
                            textAlign: TextAlign.center,
                            softWrap: true,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ));
  }
}
