import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocDelegate extends BlocObserver{

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if(kDebugMode){
      print(event);
    }
  }
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if(kDebugMode){
      print(transition);
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    if(kDebugMode){
      print('$error $stacktrace');
    }
  }
}