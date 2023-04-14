// class asd {
//   int? _id;
//   String? _name;
//   String? _email;
//   String? _password;

//   asd({int? id, String? name, String? email, String? password, String? status}) {
//     if (id != null) {
//       _id = id;
//     }
//     if (name != null) {
//       _name = name;
//     }
//     if (email != null) {
//       _email = email;
    
//     }
//      if (password != null) {
//       _password = password;
//     }
//   }

//   int? get id => _id;
//   set id(int? id) => _id = id;
//   String? get name => _name;
//   set name(String? name) => _name = name;
//   String? get email => _email;
//   set email(String? email) => _email = email;
//   String? get password => _password;
//   set password(String? password) => _password = password;

//   asd.fromJson(Map<String, dynamic> json) {
//     _id = json['id'];
//     _name = json['name'];
//     _email = json['email'];
//     _password = json['password'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = _id;
//     data['name'] = _name;
//     data['email'] = _email;
//     data['password'] = _password;


//     return data;
//   }
// }
