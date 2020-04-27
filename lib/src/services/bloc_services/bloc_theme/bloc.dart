import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_1/src/services/bloc_services/bloc_theme/event.dart';
import 'package:project_1/src/services/bloc_services/bloc_theme/state.dart';

class ThemeBloc extends Bloc<BlocEvent, BlocState> {
  @override
  // TODO: implement initialState
  BlocState get initialState => Waiting();

  @override
  Stream<BlocState> mapEventToState(BlocEvent event) async* {
    // TODO: implement mapEventToState
    if (event is ChangeTheme) {
      
    }
  }

}