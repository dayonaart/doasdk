extension PersonNameValidator on String {
  bool isNotValidPersonName() {
    return RegExp(r'[{}+!@#$%^&*()?><,./\;@=_0-9-]').hasMatch(this);
  }
}

extension OnlyTextAndNumberValidator on String {
  bool isValidTextAndNumber() {
    return RegExp(r'[{}+!@#$%^&*()?><,./\;@=_-]').hasMatch(this);
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

extension PhoneValidator on String {
  bool isValidPhone() {
    return RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(this);
  }
}

extension NpwpValidator on String {
  bool isValidNpwp() {
    return RegExp(r'(^(?:[+0]9)?[0-9]{16}$)').hasMatch(this);
  }
}

void printWrapped(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}

// Future<bool> saveFile(
//   Uint8List uint8list,
//   String fileName,
// ) async {
//   var _dPath = await _documentPath;
//   var _savedFile = await File("$_dPath/$fileName")
//       .writeAsBytes(uint8list, mode: FileMode.append);
//   return _savedFile.exists();
// }

// Future<void> deleteFile(String fileName) async {
//   var _dPath = await _documentPath;
//   var _file = await File("$_dPath/$fileName").delete();
//   if (await _file.exists()) {
//     DIALOG_HELPER("Can't delete cache file");
//   }
// }

// Future<File?> readFile(String fileName) async {
//   var _dPath = await _documentPath;
//   var _file = File("$_dPath/$fileName");
//   return _file;
// }

// Future<String?> get _documentPath async {
//   final directory = await getApplicationDocumentsDirectory();
//   return directory.path;
// }
