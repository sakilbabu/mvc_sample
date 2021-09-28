class NumberTrivia {
  String text;
  int number;
  bool found;
  String type;

  NumberTrivia({
    required this.text,
    required this.number,
    required this.found,
    required this.type,
  });

  factory NumberTrivia.fromJson(Map<String, dynamic> json) => NumberTrivia(
        type: json['type'],
        found: json['found'],
        number: json['number'],
        text: json['text'],
      );
}
