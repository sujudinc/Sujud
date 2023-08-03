import 'package:sujud/models/models.dart';

extension ContactInfoX on ContactInfo {
  String toUserFriendlyString() {
    final socialMedia = this.socialMedia;

    return '${phone == null ? '' : '- Phone: $phone\n'}'
        '${email == null ? '' : '- Email: $email\n'}'
        '${website == null ? '' : '- Website: $website\n'}'
        '\n'
        '${socialMedia == null ? '' : 'Social Media:'}\n'
        '${socialMedia?.facebook == null ? '' : '  '
            '- Facebook: ${socialMedia?.facebook}\n'}'
        '${socialMedia?.twitter == null ? '' : '  '
            '- Twitter: ${socialMedia?.twitter}\n'}'
        '${socialMedia?.instagram == null ? '' : '  '
            '- Instagram: ${socialMedia?.instagram}\n'}';
  }
}
