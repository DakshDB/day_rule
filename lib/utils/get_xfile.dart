import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';


Future<XFile> getImageXFileByUrl(String url) async {
// Generate a random number.
  var rng = Random();

  // Get the temporary directory of the device.
  Directory tempDir = await getTemporaryDirectory();

  // Get the temporary path from the temporary directory.
  String tempPath = tempDir.path;

  // Create a new file in the temporary path with a random filename.
  File file = File('$tempPath${rng.nextInt(100)}.png');

  // Call the `http.get` method and pass the imageUrl into it to get the response.
  http.Response response = await http.get(Uri.parse(url));

  // Save the response bytes to the file.
  await file.writeAsBytes(response.bodyBytes);

  // Return the XFile of the file.
  return XFile(file.path);
}
