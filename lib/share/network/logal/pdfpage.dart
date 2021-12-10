// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
// import 'package:path/path.dart' as p;
// import 'package:path/path.dart';
//
// class PdfScreen extends StatefulWidget {
//   final File file;
//   const PdfScreen({Key? key,required this.file}) : super(key: key);
//
//   @override
//   _PdfScreenState createState() => _PdfScreenState();
// }
//
// class _PdfScreenState extends State<PdfScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final name = basename(widget.file.path);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(name),
//       ),
//       body: PDFView(
//
//       ),
//     );
//   }
// }
