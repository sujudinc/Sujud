import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

part 'admin_prayer_times_subtab.cubit.freezed.dart';
part 'admin_prayer_times_subtab.state.dart';

class AdminPrayerTimesSubtabCubit extends Cubit<AdminPrayerTimesSubtabState> {
  AdminPrayerTimesSubtabCubit()
      : _navigationUtility = GetIt.instance.get<NavigationUtilityAbstract>(),
        // _prayerUtility = GetIt.instance.get<PrayerUtilityAbstract>(),
        _mosqueRepo = GetIt.instance.get<MosqueRepoAbstract>(),
        _prayerTimeRepo = GetIt.instance.get<UserRepoAbstract>(),
        super(const AdminPrayerTimesSubtabState.initial());

  final NavigationUtilityAbstract _navigationUtility;
  // final PrayerUtilityAbstract _prayerUtility;
  final MosqueRepoAbstract _mosqueRepo;
  final UserRepoAbstract _prayerTimeRepo;

  Mosque? get selectedMosque => _mosqueRepo.selectedMosque;

  List<MonthlyPrayerSchedule> get monthlyPrayerSchedules {
    final monthlyPrayerSchedules = selectedMosque?.monthlyPrayerSchedules;

    return monthlyPrayerSchedules ?? <MonthlyPrayerSchedule>[];
  }

  List<PrayerTime> get selectedMonthlyPrayerSchedule => <PrayerTime>[];

  void get goToCreatePrayerTimesPage {
    _navigationUtility.push(
      path: NavigationPath(
        route: _navigationUtility
            .navigationRoutes.home.admin.dashboard.createAnnouncement,
        subRoute: 'dashboard',
      ),
    );
  }

  @override
  Future<void> close() {
    _mosqueRepo.dispose();
    _prayerTimeRepo.dispose();
    return super.close();
  }
}
