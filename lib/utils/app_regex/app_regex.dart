/// All AppRegex Defined here.

abstract class AppRegex {
  static final RegExp successCode = RegExp(r'20\d');
  static final RegExp capitalLetter = RegExp(r'[A-Z0-9]');
  static final RegExp nameWhitelist = RegExp(r'[A-Za-z\-\. ]');
  static final RegExp middleNameWhitelist = RegExp(r'[A-Za-z\-]');
  static final RegExp addressWhitelist = RegExp(r'[A-Za-z0-9_,\-\./ ]');
  static final RegExp operatorWhitelist = RegExp(r'[A-Za-z0-9_,\-\./ ]');
  static final RegExp digitsOnly = RegExp(r'\d');
  static final RegExp floatNumber = RegExp(r'[\.\d]');
  static final RegExp zero = RegExp(r'^0+');
  static final RegExp multiSpaces = RegExp(r'  ');
  static final RegExp space = RegExp(r' ');
  static final RegExp aplhaNumeric = RegExp(r'[A-Za-z0-9]');
  static final RegExp fullName = RegExp(r'[A-Za-z\-\. ]');
  static final RegExp passwordRegex =
      RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^\w\s]).{8,}$');
  static final RegExp emojiRegex = RegExp(
      r'(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])');
  static RegExp emailRegex = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
  );
  static RegExp emailorPhone = RegExp(
    r'^(?:[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}|[0-9]{10,12})$',
  );
  static RegExp accountNo = RegExp(r'^\d{9,18}$');
  static RegExp expiration = RegExp(r'(0[1-9]|1[0-2])\/[0-9]{2}');
  static RegExp cvv= RegExp(r'^[0-9]{3,4}$');
  static RegExp upi=RegExp(r'^[a-zA-Z0-9.\-_]{2,256}@[a-zA-Z]{2,64}');
  static RegExp phoneNumber=RegExp(r'^[6789]\d{9}$');
}
