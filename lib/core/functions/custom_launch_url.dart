import 'package:bookly_app/core/functions/custom_snack%20_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLaunchUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    } else {
      customSnackBar(context, 'cannot Launch $url');
    }
  }
}
