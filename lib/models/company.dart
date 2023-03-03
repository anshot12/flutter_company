class Company {
  final String capitaliszation;
  final String description;
  final String name;
  final String symbol;
  final String industry;

  Company(
      {required this.capitaliszation,
      required this.description,
      required this.name,
      required this.symbol,
      required this.industry});

  factory Company.fromJson(dynamic json) {
    return Company(
        capitaliszation: json['MarketCapitalization'] as String,
        description: json['Description'] as String,
        name: json['Name'] as String,
        symbol: json['Symbol'] as String,
        industry: json['Industry'] as String);
  }

  // @override
  // String toString() {
  //   return 'Company {name: $name, capitaliszation $capitaliszation, symbol $symbol, industry $industry, description $description}';
  // }
}
