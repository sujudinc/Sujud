// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

part 'admin_prayer_times_subtab.cubit.freezed.dart';
part 'admin_prayer_times_subtab.state.dart';

class AdminPrayerTimesSubtabCubit extends Cubit<AdminPrayerTimesSubtabState> {
  AdminPrayerTimesSubtabCubit()
      : // _prayerUtility = GetIt.instance.get<PrayerUtilityAbstract>(),
        _mosqueRepo = GetIt.instance.get<MosqueRepoAbstract>(),
        _prayerTimeRepo = GetIt.instance.get<UserRepoAbstract>(),
        super(const AdminPrayerTimesSubtabState.initial());

  // final PrayerUtilityAbstract _prayerUtility;
  final MosqueRepoAbstract _mosqueRepo;
  final UserRepoAbstract _prayerTimeRepo;

  Mosque? get selectedMosque => _mosqueRepo.selectedMosque;

  List<MonthlyPrayerSchedule> get monthlyPrayerSchedules {
    final monthlyPrayerSchedules = selectedMosque?.monthlyPrayerSchedules;

    return monthlyPrayerSchedules ?? <MonthlyPrayerSchedule>[];
  }

  List<PrayerTime> get selectedMonthlyPrayerSchedule => <PrayerTime>[];

  @override
  Future<void> close() {
    _mosqueRepo.dispose();
    _prayerTimeRepo.dispose();
    return super.close();
  }
}
