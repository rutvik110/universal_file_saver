import 'dart:convert';
import 'dart:developer';
import 'dart:html';

import 'data_to_csv_string_parser.dart';

Future<void> saveDataToCsv(
    String fileName, List<List<dynamic>> dataList) async {
  log("WEb Export");

  final String csvSting = parseDataToCsvString(dataList);

  AnchorElement()
    ..href =
        '${Uri.dataFromString(csvSting, mimeType: 'text/csv', encoding: utf8)}'
    ..download = fileName
    ..style.display = 'none'
    ..click();
}
