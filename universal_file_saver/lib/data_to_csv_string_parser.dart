import 'package:csv/csv.dart';

String parseDataToCsvString(List<List<dynamic>> data) {
  final String csvString =
      ListToCsvConverter().convert(data, fieldDelimiter: ",");
  return csvString;
}
