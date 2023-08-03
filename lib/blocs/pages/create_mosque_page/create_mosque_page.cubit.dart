import 'dart:typed_data';

import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/models/models.dart';

part 'create_mosque_page.state.dart';
part 'create_mosque_page.cubit.freezed.dart';

class CreateMosquePageCubit extends Cubit<CreateMosquePageState> {
  CreateMosquePageCubit()
      : _navigation = GetIt.instance.get<NavigationUtilityAbstract>(),
        _toast = GetIt.instance.get<ToastUtilityAbstract>(),
        _userRepo = GetIt.instance.get<UserRepoAbstract>(),
        super(const CreateMosquePageState.ready());

  final NavigationUtilityAbstract _navigation;
  final ToastUtilityAbstract _toast;
  final UserRepoAbstract _userRepo;

  String? _name;
  String? _description;
  var _images = <Uint8List>[];
  Address? _address;
  Hours? _hours;
  ContactInfo? _contactInfo;

  String? get name => _name;
  String? get description => _description;
  List<Uint8List> get images => _images;
  Address? get location => _address;
  Hours? get hours => _hours;
  ContactInfo? get contactInfo => _contactInfo;
  User? get currentUser => _userRepo.currentUser;
  NavigationRoutes get routes => _navigation.navigationRoutes;
  void get back => _navigation.back();

  set name(String? value) {
    emit(const CreateMosquePageState.loading());
    _name = value;
    emit(const CreateMosquePageState.ready());
  }

  set description(String? value) {
    emit(const CreateMosquePageState.loading());
    _description = value;
    emit(const CreateMosquePageState.ready());
  }

  set images(List<Uint8List> value) {
    emit(const CreateMosquePageState.loading());
    _images = value;
    emit(const CreateMosquePageState.ready());
  }

  set location(Address? address) {
    emit(const CreateMosquePageState.loading());
    _address = address;
    emit(const CreateMosquePageState.ready());
  }

  set hours(Hours? hours) {
    emit(const CreateMosquePageState.loading());
    _hours = hours;
    emit(const CreateMosquePageState.ready());
  }

  set contactInfo(ContactInfo? contactInfo) {
    emit(const CreateMosquePageState.loading());
    _contactInfo = contactInfo;
    emit(const CreateMosquePageState.ready());
  }

  Future<T> goToFieldPage<T>({
    required String fieldName,
    String? initialValue,
  }) async {
    final data = await _navigation.push(
      path: NavigationPath(
        route: routes.home.admin.dashboard.createMosque.field,
        subRoute: 'dashboard',
        queryParameters: <String, String>{
          'fieldName': fieldName,
          if (initialValue != null) 'initialValue': initialValue,
        },
      ),
    );

    return data as T;
  }

  bool get isCompleteButtonEnabled {
    final isComplete = _name != null &&
        _description != null &&
        _images.isNotEmpty &&
        _address != null &&
        _hours != null &&
        _contactInfo != null;

    return isComplete;
  }

  Future<void> create() async {}

  CherryToast displayToast({required String title, required String message}) {
    final toast = _toast.show(
      title: title,
      message: message,
      type: ToastType.error,
    );

    return toast;
  }
}
