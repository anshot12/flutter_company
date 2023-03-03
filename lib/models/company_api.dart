import 'dart:convert';

import 'package:flutter_application_1/models/company.dart';
import 'package:http/http.dart' as http;

class CompanyApi {
  static Future<Company> getCompany(String symbol) async {
    var url = Uri.http('www.alphavantage.co', '/query', {
      'function': 'OVERVIEW',
      'symbol': symbol,
      'apikey': 'ONEWMPQ66B2Y2Y3'
    });

    final response = await http.get(url);

    Map data = jsonDecode(response.body);

    return Company.fromJson(data);
  }
}
