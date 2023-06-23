// shareContent method is used to share the content to other apps


import 'package:enhanced_you/utils/get_xfile.dart';
import 'package:share_plus/share_plus.dart';

Future<void> shareContent({required String title, required String content, required String url}) async {
  // Create a temporary XFile from the web URL
  XFile imageFile = await getImageXFileByUrl(url);

  // Share content
  await Share.shareXFiles(
    [imageFile],
    text: '$title\n$content',
    subject: '$title\n$content',
  );
}

