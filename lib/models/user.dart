import './verify.dart';


class User {
  static int _countID = 1;
  final int _id = _countID;
  late String _name;
  late String _profileImage;
  late String _email;
  late String _password;
  User(
    this._email,
    this._password,
    this._name,
    this._profileImage,
  ) {
    _countID++;
  }

  int getId() {
    return _id;
  }

  //methods 4 Name
  set name(String name) {
    if (name.length > 2) {
      this.name = name;
    }
  }

  String getName() {
    return _name;
  }

  //
  //methods 4 email
  set email(String email) {
    if (Verify.isEMail(email)) {
      // ignore: unnecessary_this
      this._email = email;
    }
  }

  String getEmail() {
    return _email;
  }
  
  
  //


}

