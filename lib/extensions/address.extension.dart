// 🌎 Project imports:
import 'package:sujud/models/models.dart';

extension AddressX on Address {
  String get address {
    final address = '$addressLine1,\n'
        '${addressLine2 != null ? '$addressLine2,\n' : ''}'
        '${addressLine3 != null ? '$addressLine3,\n' : ''}'
        '$city,\n$province,\n$postalCode\n$country,';

    return address;
  }
}
