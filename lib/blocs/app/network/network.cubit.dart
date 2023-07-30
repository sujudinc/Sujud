import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network.state.dart';
part 'network.cubit.freezed.dart';

class NetworkCubit extends Cubit<NetworkState> {
  NetworkCubit() : super(const NetworkState.ready());
}
