import 'dart:developer';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:universal_file_saver/data_to_csv_string_parser.dart';

Future<void> saveDataToCsv(
    String fileName, List<List<dynamic>> dataList) async {
  log("Mobile Export");
  final String csvSting = parseDataToCsvString(dataList);

  final String filePath =
      '${(await getApplicationDocumentsDirectory()).path}/$fileName.csv';

  final File file = File(filePath);

  await file.writeAsString(csvSting);

  log(file.path);
}
