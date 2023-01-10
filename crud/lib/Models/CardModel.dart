class CardModel {
  final String name;
  final String numbar;
  final String age;
  CardModel({required this.name, required this.numbar, required this.age});
}

class User {
  String name, number, age;
  User(this.name, this.age, this.number);
  User.formJson(Map<String, dynamic> json)
      : name = json['name'],
        number = json['numbar'],
        age = json['age'];
  Map<String, dynamic> toJson() => {
        'name': name,
        "number": number,
        'age': age,
      };
}
