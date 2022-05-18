class Verify
{
 static bool isEMail(email)
  {
    // to check if the email address valid or not 
      return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  }
}