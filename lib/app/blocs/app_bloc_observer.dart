import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talker/talker.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';

class AppBlocObserver extends BlocObserver {
  AppBlocObserver({required Talker talker})
    : _talkerObserver = TalkerBlocObserver(
        talker: talker,
        settings: const TalkerBlocLoggerSettings(
          printCreations: true,
          printClosings: true,
          printChanges: true,
        ),
      );

  final TalkerBlocObserver _talkerObserver;

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    _talkerObserver.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    _talkerObserver.onChange(bloc, change);
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    _talkerObserver.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    _talkerObserver.onError(bloc, error, stackTrace);
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    _talkerObserver.onCreate(bloc);
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    _talkerObserver.onClose(bloc);
  }
}
