class Postmodel {
  String id;
  String it;
  String title;
  String body;

  Postmodel({
    required this.id,
    required this.it,
    required this.title,
    required this.body,
  });
  Postmodel.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        it = data['it'],
        title = data['title'],
        body = data['body'];
}



// }

// class Postmodel {
//   int? id;
//   int? it;
//   String? title;
//   String? body;

//   Postmodel({this.id, this.it, this.title, this.body});

//   Postmodel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     it = json['it'];
//     title = json['title'];
//     body = json['body'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['it'] = this.it;
//     data['title'] = this.title;
//     data['body'] = this.body;

//     return data;
//   }
// }