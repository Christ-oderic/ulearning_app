import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/app_events.dart';
import 'package:ulearning_app/app_states.dart';

class AppBloc extends Bloc<AppEvents, AppStates> {
  AppBloc() : super(InitStates()) {
    on<Increment>((event, emit) {
      emit(AppStates(counter: state.counter + 1));
    });
    on<Decrement>((event, emit) {
      emit(AppStates(counter: state.counter - 1));
    });
  }
}
