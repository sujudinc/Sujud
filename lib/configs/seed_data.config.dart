// 📦 Package imports:
import 'package:amplify_datastore/amplify_datastore.dart';

// 🌎 Project imports:
import 'package:sujud/models/models.dart';

final sampleMosque = Mosque(
  id: '1',
  name: 'Masjid Esa Bin Maryam',
  description: 'Masjid ‘Ēsa Ibn Maryam, which translates to “The Mosque of '
      'Jesus, Son of Mary”, based on 14 Etwall Road, Hall Green, Birmingham, '
      'B28 0LE, was formerly a Church (Trinity United Reformed Church). '
      'It was purchased in May 2017 as a place of worship and a community '
      'hub for the growing Muslim community living in its vicinity. After a '
      'period of renovation works the Masjid was open for daily services '
      'during late January 2018.',
  images: const <String>[
    'https://drive.google.com/uc?export=view&id=1unmq6rmaGpyDrmFyiqnE1zv-BuIY06fU',
  ],
  location: Location(
    addressLine1: '14 Etwall Road',
    city: 'Burmingham',
    province: 'West Midlands',
    country: 'United Kingdom',
    postalCode: 'B28 0LE',
    latitude: 24.467438,
    longitude: 39.611194,
  ),
  hours: Hours(
    monday: Day(
      type: DayType.MONDAY,
      operatingHours: <OperatingHours>[
        OperatingHours(
          open: TemporalTime.fromString('04:30:00.000'),
          close: TemporalTime.fromString('23:00:00.000'),
        ),
      ],
    ),
    tuesday: Day(
      type: DayType.TUESDAY,
      operatingHours: <OperatingHours>[
        OperatingHours(
          open: TemporalTime.fromString('04:30:00.000'),
          close: TemporalTime.fromString('23:00:00.000'),
        ),
      ],
    ),
    wednesday: Day(
      type: DayType.WEDNESDAY,
      operatingHours: <OperatingHours>[
        OperatingHours(
          open: TemporalTime.fromString('04:30:00.000'),
          close: TemporalTime.fromString('23:00:00.000'),
        ),
      ],
    ),
    thursday: Day(
      type: DayType.THURSDAY,
      operatingHours: <OperatingHours>[
        OperatingHours(
          open: TemporalTime.fromString('04:30:00.000'),
          close: TemporalTime.fromString('23:00:00.000'),
        ),
      ],
    ),
    friday: Day(
      type: DayType.FRIDAY,
      operatingHours: <OperatingHours>[
        OperatingHours(
          open: TemporalTime.fromString('04:30:00.000'),
          close: TemporalTime.fromString('23:00:00.000'),
        ),
      ],
    ),
    saturday: Day(
      type: DayType.SATURDAY,
      operatingHours: <OperatingHours>[
        OperatingHours(
          open: TemporalTime.fromString('04:30:00.000'),
          close: TemporalTime.fromString('23:00:00.000'),
        ),
      ],
    ),
    sunday: Day(
      type: DayType.SUNDAY,
      operatingHours: <OperatingHours>[
        OperatingHours(
          open: TemporalTime.fromString('04:30:00.000'),
          close: TemporalTime.fromString('23:00:00.000'),
        ),
      ],
    ),
  ),
  contactInfo: ContactInfo(
    phoneNumber: '+44 0 730 596 8580',
    email: 'info@arrahma.co.uk',
    website: 'https://arrahma.co.uk',
    socialMedia: SocialMedia(
        facebook: 'http://facebook.com/ArRahmaUK',
        twitter: 'http://twitter.com/ArRahmaUK',
        instagram: 'http://instagram.com/arrahmafoundation'),
  ),
  creator: sampleCreator,
  monthlyPrayerSchedules: <MonthlyPrayerSchedule>[
    MonthlyPrayerSchedule(
      year: 2023,
      month: 6,
      prayerTimes: <PrayerTime>[
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-01T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-01T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-01T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-01T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-01T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-01T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-01T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-01T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-01T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-01T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-02T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-02T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-02T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-02T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-02T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-02T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-02T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-02T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-02T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-02T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-03T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-03T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-03T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-03T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-03T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-03T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-03T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-03T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-03T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-03T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-04T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-04T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-04T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-04T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-04T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-04T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-04T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-04T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-04T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-04T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-05T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-05T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.JUMUAH,
          athan: TemporalDateTime.fromString(
            '2023-06-05T13:00:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-05T13:30:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-05T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-05T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-05T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-05T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-05T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-05T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-06T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-06T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-06T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-06T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-06T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-06T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-06T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-06T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-06T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-06T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-07T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-07T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-07T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-07T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-07T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-07T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-07T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-07T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-07T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-07T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-08T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-08T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-08T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-08T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-08T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-08T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-08T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-08T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-08T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-08T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-09T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-09T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-09T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-09T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-09T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-09T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-09T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-09T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-09T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-09T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-10T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-10T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-10T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-10T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-10T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-10T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-10T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-10T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-10T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-10T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-11T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-11T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-11T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-11T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-11T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-11T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-11T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-11T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-11T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-11T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-12T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-12T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.JUMUAH,
          athan: TemporalDateTime.fromString(
            '2023-06-12T13:00:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-12T13:30:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-12T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-12T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-12T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-12T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-12T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-12T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-13T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-13T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-13T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-13T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-13T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-13T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-13T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-13T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-13T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-13T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-14T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-14T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-14T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-14T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-14T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-14T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-14T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-14T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-14T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-14T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-15T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-15T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-15T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-15T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-15T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-15T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-15T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-15T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-15T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-15T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-16T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-16T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-16T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-16T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-16T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-16T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-16T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-16T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-16T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-16T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-17T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-17T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-17T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-17T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-17T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-17T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-17T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-17T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-17T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-17T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-18T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-18T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-18T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-18T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-18T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-18T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-18T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-18T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-18T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-18T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-19T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-19T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.JUMUAH,
          athan: TemporalDateTime.fromString(
            '2023-06-19T13:00:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-19T13:30:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-19T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-19T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-19T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-19T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-19T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-19T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-20T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-20T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-20T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-20T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-20T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-20T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-20T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-20T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-20T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-20T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-21T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-21T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-21T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-21T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-21T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-21T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-21T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-21T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-21T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-21T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-22T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-22T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-22T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-22T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-22T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-22T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-22T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-22T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-22T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-22T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-23T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-23T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-23T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-23T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-23T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-23T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-23T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-23T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-23T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-23T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-24T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-24T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-24T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-24T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-24T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-24T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-24T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-24T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-24T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-24T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-25T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-25T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-25T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-25T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-25T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-25T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-25T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-25T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-25T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-25T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-26T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-26T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.JUMUAH,
          athan: TemporalDateTime.fromString(
            '2023-06-26T13:00:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-26T13:30:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-26T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-26T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-26T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-26T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-26T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-26T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-27T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-27T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-27T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-27T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-27T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-27T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-27T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-27T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-27T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-27T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-28T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-28T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-28T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-28T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-28T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-28T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-28T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-28T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-28T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-28T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-29T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-29T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.JUMUAH,
          athan: TemporalDateTime.fromString(
            '2023-06-29T13:00:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-29T13:30:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-29T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-29T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-29T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-29T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-29T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-29T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-30T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-30T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-30T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-30T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-30T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-30T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-30T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-30T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-30T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-30T21:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.FAJR,
          athan: TemporalDateTime.fromString(
            '2023-06-31T04:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-31T04:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.THUHR,
          athan: TemporalDateTime.fromString(
            '2023-06-31T13:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-31T13:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ASR,
          athan: TemporalDateTime.fromString(
            '2023-06-31T17:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-31T17:45:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.MAGHRIB,
          athan: TemporalDateTime.fromString(
            '2023-06-31T19:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-31T19:35:00.000+00:00',
          ),
        ),
        PrayerTime(
          type: PrayerType.ISHA,
          athan: TemporalDateTime.fromString(
            '2023-06-31T21:30:00.000+00:00',
          ),
          iqamah: TemporalDateTime.fromString(
            '2023-06-31T21:45:00.000+00:00',
          ),
        ),
      ],
    ),
  ],
);

final sampleMosques = <Mosque>[
  Mosque(
    id: '1',
    name: 'Masjid Esa Bin Maryam',
    description: 'Masjid ‘Ēsa Ibn Maryam, which translates to “The Mosque of '
        'Jesus, Son of Mary”, based on 14 Etwall Road, Hall Green, Birmingham, '
        'B28 0LE, was formerly a Church (Trinity United Reformed Church). '
        'It was purchased in May 2017 as a place of worship and a community '
        'hub for the growing Muslim community living in its vicinity. After a '
        'period of renovation works the Masjid was open for daily services '
        'during late January 2018.',
    images: const [
      'https://drive.google.com/uc?export=view&id=1unmq6rmaGpyDrmFyiqnE1zv-BuIY06fU',
    ],
    location: Location(
      addressLine1: '14 Etwall Road',
      city: 'Burmingham',
      province: 'West Midlands',
      country: 'United Kingdom',
      postalCode: 'B28 0LE',
      latitude: 24.467438,
      longitude: 39.611194,
    ),
    hours: Hours(
      monday: Day(
        type: DayType.MONDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      tuesday: Day(
        type: DayType.TUESDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      wednesday: Day(
        type: DayType.WEDNESDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      thursday: Day(
        type: DayType.THURSDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      friday: Day(
        type: DayType.FRIDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      saturday: Day(
        type: DayType.SATURDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      sunday: Day(
        type: DayType.SUNDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
    ),
    contactInfo: ContactInfo(
      phoneNumber: '+44 0 7305 968 580',
      email: 'info@arrahma.co.uk',
      website: 'https://arrahma.co.uk',
      socialMedia: SocialMedia(
          facebook: 'http://facebook.com/ArRahmaUK',
          twitter: 'http://twitter.com/ArRahmaUK',
          instagram: 'http://instagram.com/arrahmafoundation'),
    ),
    creator: sampleCreator,
    monthlyPrayerSchedules: <MonthlyPrayerSchedule>[
      MonthlyPrayerSchedule(
        year: 2023,
        month: 6,
        prayerTimes: <PrayerTime>[
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-01T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-01T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-01T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-01T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-01T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-01T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-01T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-01T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-01T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-01T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-02T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-02T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-02T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-02T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-02T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-02T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-02T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-02T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-02T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-02T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-03T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-03T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-03T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-03T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-03T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-03T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-03T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-03T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-03T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-03T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-04T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-04T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-04T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-04T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-04T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-04T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-04T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-04T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-04T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-04T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-05T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-05T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.JUMUAH,
            athan: TemporalDateTime.fromString(
              '2023-06-05T13:00:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-05T13:30:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-05T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-05T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-05T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-05T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-05T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-05T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-06T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-06T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-06T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-06T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-06T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-06T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-06T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-06T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-06T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-06T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-07T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-07T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-07T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-07T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-07T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-07T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-07T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-07T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-07T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-07T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-08T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-08T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-08T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-08T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-08T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-08T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-08T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-08T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-08T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-08T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-09T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-09T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-09T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-09T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-09T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-09T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-09T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-09T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-09T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-09T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-10T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-10T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-10T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-10T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-10T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-10T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-10T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-10T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-10T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-10T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-11T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-11T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-11T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-11T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-11T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-11T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-11T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-11T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-11T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-11T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-12T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-12T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.JUMUAH,
            athan: TemporalDateTime.fromString(
              '2023-06-12T13:00:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-12T13:30:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-12T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-12T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-12T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-12T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-12T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-12T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-13T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-13T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-13T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-13T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-13T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-13T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-13T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-13T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-13T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-13T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-14T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-14T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-14T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-14T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-14T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-14T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-14T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-14T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-14T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-14T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-15T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-15T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-15T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-15T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-15T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-15T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-15T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-15T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-15T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-15T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-16T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-16T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-16T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-16T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-16T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-16T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-16T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-16T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-16T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-16T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-17T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-17T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-17T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-17T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-17T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-17T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-17T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-17T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-17T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-17T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-18T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-18T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-18T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-18T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-18T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-18T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-18T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-18T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-18T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-18T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-19T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-19T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.JUMUAH,
            athan: TemporalDateTime.fromString(
              '2023-06-19T13:00:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-19T13:30:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-19T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-19T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-19T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-19T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-19T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-19T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-20T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-20T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-20T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-20T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-20T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-20T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-20T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-20T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-20T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-20T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-21T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-21T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-21T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-21T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-21T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-21T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-21T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-21T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-21T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-21T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-22T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-22T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-22T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-22T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-22T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-22T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-22T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-22T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-22T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-22T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-23T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-23T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-23T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-23T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-23T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-23T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-23T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-23T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-23T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-23T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-24T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-24T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-24T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-24T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-24T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-24T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-24T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-24T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-24T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-24T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-25T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-25T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-25T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-25T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-25T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-25T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-25T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-25T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-25T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-25T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-26T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-26T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.JUMUAH,
            athan: TemporalDateTime.fromString(
              '2023-06-26T13:00:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-26T13:30:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-26T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-26T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-26T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-26T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-26T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-26T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-27T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-27T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-27T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-27T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-27T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-27T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-27T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-27T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-27T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-27T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-28T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-28T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-28T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-28T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-28T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-28T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-28T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-28T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-28T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-28T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-29T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-29T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.JUMUAH,
            athan: TemporalDateTime.fromString(
              '2023-06-29T13:00:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-29T13:30:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-29T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-29T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-29T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-29T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-29T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-29T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-30T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-30T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-30T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-30T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-30T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-30T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-30T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-30T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-30T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-30T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-31T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-31T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-31T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-31T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-31T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-31T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-31T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-31T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-31T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-31T21:45:00.000+00:00',
            ),
          ),
        ],
      ),
    ],
  ),
  Mosque(
    id: '2',
    name: 'Masjid Sulayman Bin Dawood',
    description:
        'Masjid Sulayman Bin Dawood, which translates to “The Mosque of '
        'Solomon, Son of David”, based on 196 York Road, Hall Green, '
        'Birmingham, B28 8LE, was formerly a Pub (The York). It was '
        'purchased in May 2021 as a place of worship, a Masjid (no '
        'Masjid facility for the large Muslim community in the area) and a '
        'community hub, with a dedicated Youth Centre and Funeral Services '
        'facilities. Currently, Masjid Sulayman Bin Dawood is undergoing a '
        'change of use from a Pub to a place of worship. Updates to follow.',
    images: const [
      'https://drive.google.com/uc?export=view&id=1unmq6rmaGpyDrmFyiqnE1zv-BuIY06fU',
    ],
    location: Location(
      addressLine1: '14 Etwall Road',
      city: 'Burmingham',
      province: 'West Midlands',
      country: 'United Kingdom',
      postalCode: 'B28 0LE',
      latitude: 24.467438,
      longitude: 39.611194,
    ),
    hours: Hours(
      monday: Day(
        type: DayType.MONDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      tuesday: Day(
        type: DayType.TUESDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      wednesday: Day(
        type: DayType.WEDNESDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      thursday: Day(
        type: DayType.THURSDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      friday: Day(
        type: DayType.FRIDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      saturday: Day(
        type: DayType.SATURDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      sunday: Day(
        type: DayType.SUNDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
    ),
    contactInfo: ContactInfo(
      phoneNumber: '+44 0 7305 968 580',
      email: 'info@arrahma.co.uk',
      website: 'https://arrahma.co.uk',
      socialMedia: SocialMedia(
          facebook: 'http://facebook.com/ArRahmaUK',
          twitter: 'http://twitter.com/ArRahmaUK',
          instagram: 'http://instagram.com/arrahmafoundation'),
    ),
    creator: sampleCreator,
    monthlyPrayerSchedules: <MonthlyPrayerSchedule>[
      MonthlyPrayerSchedule(
        year: 2023,
        month: 6,
        prayerTimes: <PrayerTime>[
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-01T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-01T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-01T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-01T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-01T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-01T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-01T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-01T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-01T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-01T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-02T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-02T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-02T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-02T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-02T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-02T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-02T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-02T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-02T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-02T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-03T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-03T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-03T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-03T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-03T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-03T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-03T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-03T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-03T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-03T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-04T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-04T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-04T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-04T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-04T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-04T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-04T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-04T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-04T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-04T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-05T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-05T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.JUMUAH,
            athan: TemporalDateTime.fromString(
              '2023-06-05T13:00:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-05T13:30:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-05T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-05T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-05T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-05T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-05T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-05T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-06T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-06T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-06T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-06T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-06T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-06T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-06T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-06T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-06T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-06T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-07T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-07T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-07T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-07T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-07T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-07T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-07T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-07T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-07T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-07T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-08T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-08T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-08T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-08T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-08T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-08T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-08T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-08T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-08T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-08T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-09T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-09T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-09T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-09T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-09T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-09T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-09T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-09T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-09T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-09T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-10T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-10T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-10T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-10T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-10T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-10T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-10T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-10T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-10T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-10T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-11T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-11T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-11T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-11T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-11T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-11T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-11T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-11T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-11T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-11T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-12T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-12T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.JUMUAH,
            athan: TemporalDateTime.fromString(
              '2023-06-12T13:00:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-12T13:30:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-12T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-12T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-12T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-12T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-12T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-12T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-13T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-13T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-13T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-13T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-13T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-13T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-13T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-13T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-13T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-13T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-14T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-14T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-14T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-14T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-14T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-14T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-14T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-14T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-14T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-14T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-15T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-15T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-15T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-15T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-15T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-15T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-15T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-15T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-15T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-15T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-16T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-16T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-16T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-16T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-16T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-16T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-16T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-16T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-16T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-16T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-17T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-17T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-17T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-17T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-17T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-17T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-17T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-17T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-17T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-17T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-18T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-18T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-18T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-18T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-18T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-18T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-18T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-18T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-18T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-18T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-19T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-19T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.JUMUAH,
            athan: TemporalDateTime.fromString(
              '2023-06-19T13:00:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-19T13:30:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-19T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-19T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-19T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-19T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-19T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-19T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-20T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-20T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-20T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-20T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-20T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-20T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-20T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-20T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-20T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-20T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-21T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-21T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-21T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-21T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-21T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-21T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-21T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-21T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-21T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-21T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-22T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-22T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-22T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-22T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-22T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-22T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-22T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-22T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-22T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-22T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-23T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-23T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-23T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-23T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-23T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-23T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-23T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-23T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-23T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-23T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-24T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-24T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-24T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-24T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-24T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-24T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-24T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-24T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-24T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-24T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-25T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-25T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-25T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-25T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-25T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-25T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-25T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-25T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-25T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-25T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-26T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-26T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.JUMUAH,
            athan: TemporalDateTime.fromString(
              '2023-06-26T13:00:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-26T13:30:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-26T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-26T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-26T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-26T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-26T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-26T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-27T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-27T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-27T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-27T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-27T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-27T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-27T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-27T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-27T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-27T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-28T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-28T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-28T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-28T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-28T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-28T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-28T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-28T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-28T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-28T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-29T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-29T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.JUMUAH,
            athan: TemporalDateTime.fromString(
              '2023-06-29T13:00:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-29T13:30:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-29T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-29T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-29T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-29T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-29T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-29T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-30T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-30T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-30T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-30T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-30T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-30T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-30T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-30T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-30T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-30T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-31T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-31T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-31T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-31T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-31T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-31T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-31T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-31T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-31T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-31T21:45:00.000+00:00',
            ),
          ),
        ],
      ),
    ],
  ),
  Mosque(
    id: '3',
    name: 'Green Lane Masjid & Community Centre',
    description: 'To establish mosques as dynamic centres of the community, '
        'delivering not just services of worship, but also grassroots '
        'education and community projects and thereby making a positive and '
        'meaningful contribution to society.',
    images: const [
      'https://drive.google.com/uc?export=view&id=1unmq6rmaGpyDrmFyiqnE1zv-BuIY06fU',
    ],
    location: Location(
      addressLine1: '14 Etwall Road',
      city: 'Burmingham',
      province: 'West Midlands',
      country: 'United Kingdom',
      postalCode: 'B28 0LE',
      latitude: 24.467438,
      longitude: 39.611194,
    ),
    hours: Hours(
      monday: Day(
        type: DayType.MONDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      tuesday: Day(
        type: DayType.TUESDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      wednesday: Day(
        type: DayType.WEDNESDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      thursday: Day(
        type: DayType.THURSDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      friday: Day(
        type: DayType.FRIDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      saturday: Day(
        type: DayType.SATURDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
      sunday: Day(
        type: DayType.SUNDAY,
        operatingHours: <OperatingHours>[
          OperatingHours(
            open: TemporalTime.fromString('04:30:00.000'),
            close: TemporalTime.fromString('23:00:00.000'),
          ),
        ],
      ),
    ),
    contactInfo: ContactInfo(
      phoneNumber: '+44 0 7305 968 580',
      email: 'info@arrahma.co.uk',
      website: 'https://arrahma.co.uk',
      socialMedia: SocialMedia(
          facebook: 'http://facebook.com/ArRahmaUK',
          twitter: 'http://twitter.com/ArRahmaUK',
          instagram: 'http://instagram.com/arrahmafoundation'),
    ),
    creator: sampleCreator,
    monthlyPrayerSchedules: <MonthlyPrayerSchedule>[
      MonthlyPrayerSchedule(
        year: 2023,
        month: 6,
        prayerTimes: <PrayerTime>[
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-01T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-01T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-01T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-01T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-01T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-01T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-01T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-01T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-01T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-01T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-02T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-02T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-02T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-02T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-02T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-02T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-02T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-02T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-02T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-02T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-03T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-03T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-03T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-03T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-03T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-03T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-03T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-03T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-03T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-03T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-04T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-04T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-04T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-04T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-04T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-04T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-04T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-04T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-04T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-04T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-05T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-05T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.JUMUAH,
            athan: TemporalDateTime.fromString(
              '2023-06-05T13:00:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-05T13:30:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-05T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-05T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-05T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-05T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-05T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-05T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-06T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-06T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-06T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-06T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-06T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-06T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-06T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-06T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-06T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-06T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-07T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-07T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-07T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-07T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-07T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-07T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-07T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-07T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-07T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-07T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-08T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-08T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-08T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-08T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-08T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-08T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-08T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-08T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-08T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-08T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-09T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-09T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-09T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-09T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-09T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-09T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-09T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-09T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-09T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-09T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-10T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-10T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-10T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-10T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-10T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-10T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-10T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-10T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-10T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-10T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-11T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-11T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-11T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-11T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-11T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-11T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-11T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-11T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-11T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-11T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-12T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-12T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.JUMUAH,
            athan: TemporalDateTime.fromString(
              '2023-06-12T13:00:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-12T13:30:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-12T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-12T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-12T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-12T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-12T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-12T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-13T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-13T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-13T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-13T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-13T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-13T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-13T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-13T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-13T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-13T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-14T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-14T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-14T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-14T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-14T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-14T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-14T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-14T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-14T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-14T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-15T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-15T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-15T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-15T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-15T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-15T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-15T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-15T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-15T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-15T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-16T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-16T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-16T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-16T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-16T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-16T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-16T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-16T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-16T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-16T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-17T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-17T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-17T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-17T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-17T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-17T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-17T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-17T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-17T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-17T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-18T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-18T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-18T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-18T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-18T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-18T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-18T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-18T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-18T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-18T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-19T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-19T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.JUMUAH,
            athan: TemporalDateTime.fromString(
              '2023-06-19T13:00:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-19T13:30:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-19T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-19T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-19T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-19T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-19T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-19T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-20T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-20T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-20T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-20T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-20T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-20T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-20T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-20T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-20T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-20T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-21T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-21T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-21T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-21T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-21T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-21T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-21T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-21T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-21T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-21T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-22T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-22T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-22T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-22T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-22T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-22T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-22T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-22T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-22T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-22T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-23T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-23T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-23T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-23T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-23T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-23T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-23T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-23T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-23T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-23T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-24T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-24T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-24T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-24T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-24T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-24T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-24T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-24T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-24T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-24T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-25T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-25T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-25T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-25T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-25T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-25T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-25T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-25T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-25T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-25T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-26T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-26T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.JUMUAH,
            athan: TemporalDateTime.fromString(
              '2023-06-26T13:00:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-26T13:30:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-26T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-26T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-26T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-26T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-26T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-26T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-27T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-27T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-27T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-27T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-27T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-27T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-27T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-27T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-27T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-27T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-28T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-28T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-28T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-28T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-28T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-28T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-28T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-28T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-28T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-28T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-29T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-29T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.JUMUAH,
            athan: TemporalDateTime.fromString(
              '2023-06-29T13:00:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-29T13:30:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-29T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-29T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-29T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-29T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-29T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-29T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-30T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-30T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-30T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-30T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-30T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-30T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-30T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-30T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-30T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-30T21:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.FAJR,
            athan: TemporalDateTime.fromString(
              '2023-06-31T04:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-31T04:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.THUHR,
            athan: TemporalDateTime.fromString(
              '2023-06-31T13:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-31T13:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ASR,
            athan: TemporalDateTime.fromString(
              '2023-06-31T17:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-31T17:45:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.MAGHRIB,
            athan: TemporalDateTime.fromString(
              '2023-06-31T19:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-31T19:35:00.000+00:00',
            ),
          ),
          PrayerTime(
            type: PrayerType.ISHA,
            athan: TemporalDateTime.fromString(
              '2023-06-31T21:30:00.000+00:00',
            ),
            iqamah: TemporalDateTime.fromString(
              '2023-06-31T21:45:00.000+00:00',
            ),
          ),
        ],
      ),
    ],
  )
];

final sampleCreator = User(
  id: '1',
  selfie: 'https://sujud.s3.amazonaws.com/selfie.jpg',
  firstName: 'Mohamed',
  lastName: 'Mohamed',
  email: 'mohd@mohd.ca',
  type: UserType.USER,
  status: UserStatus.ACTIVE,
);
