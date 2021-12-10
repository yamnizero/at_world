//
//
// //assets pdf
// //File pdf
// //Network pdf
//
// import 'dart:io';
//
// class PDfApi{
//    static Future<File?> loadNetwork(String url)async {
//       final response = await http.get(url);
//       final bytes = response.bodyBytes;
//
//       return _storeFile(url,bytes);
//    }
//
//    static Future<File?> _storeFile(String url,List<int> bytes) async {
//         final filename = basename(url);
//         final dir = await getApplictionDocumentDirectory();
//
//         final  file = File('${dir.path}/$filename');
//         await file.writeAsBytes(bytes,flush: true);
//         return file;
//    }
//
// }