library universal_file_saver;

import 'package:universal_file_saver/data_to_csv_web_export.dart'
    if (dart.library.io) 'package:universal_file_saver/data_to_csv_mobile_export.dart';

class UninversalFileSaver {
  static save(String fileName, List<List<dynamic>> dataList) =>
      saveDataToCsv(fileName, dataList);
}
