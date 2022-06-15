class Client {
  String? id;
  final String name;
  final String mail;
  final String technologie;
  final String webColor;
  final String comment;
  final String company;
  final String category;

  Client(
      {this.id = '',
      required this.name,
      required this.mail,
      required this.technologie,
      required this.webColor,
      required this.comment,
      required this.company,
      required this.category});

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'mail': mail,
        'technologie': technologie,
        'webColor': webColor,
        'comment': comment,
        'company': company,
        'category': category,
      };
}
