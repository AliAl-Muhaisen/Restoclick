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
    if (isEMail()) {
      // ignore: unnecessary_this
      this._email = email;
    }
  }

  String getEmail() {
    return _email;
  }
  
  bool isEMail()
  {
    // to check if the email address valid or not 
      return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(_email);
  }
  //


}

