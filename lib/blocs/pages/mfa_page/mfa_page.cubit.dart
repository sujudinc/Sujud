import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/exceptions/exceptions.dart';

part 'mfa_page.state.dart';
part 'mfa_page.cubit.freezed.dart';

class MfaPageCubit extends Cubit<MfaPageState> {
  MfaPageCubit()
      : _userRepo = GetIt.instance.get<UserRepoAbstract>(),
        super(const MfaPageState.initial());

  final UserRepoAbstract _userRepo;

  Future<void> confirmMFA({
    required String username,
    required String confirmationCode,
  }) async {
    await _userRepo.confirmMFA(
      username: username,
      confirmationCode: confirmationCode,
    );
  }
}
