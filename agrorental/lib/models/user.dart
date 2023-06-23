class User {
  int? id;
  String firstName;
  String lastName;
  String pays;
  String adresse;

  User(
      {this.id,
      required this.firstName,
      required this.lastName,
      required this.pays,
      required this.adresse});

  factory User.fromJsonMap(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      pays: json['pays'],
      adresse: json['adresse'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'pays': pays,
      'adresse': adresse,
    };
  }

  static List<User> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => User.fromJsonMap(json)).toList();
  }
}
