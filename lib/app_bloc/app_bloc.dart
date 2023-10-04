import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/app_event/app_event.dart';
import 'package:ulearning_app/app_states/app_states.dart';

 class AppBloc extends Bloc<AppEvent, AppStates> {
  AppBloc():super(initiliazeCounter()){

    // on<IncrementCounter>((event, emit) {
    //   emit(IncrementStateCounter(state.counter+1
    //   ));
    // });
    //
    // on<DecrementCounter>((event, emit) {
    //   emit(DecrementStateCounter(state.counter-1));
    // });



    on<IncrementCounter>((event, emit) {
      emit(AppStates(counter: state.counter+1
      ));
      print("Increase Counter");
      print(state.counter);
    });

    on<DecrementCounter>((event, emit) {
      emit(AppStates(counter: state.counter-1));
      print("Decrease Counter");
      print(state.counter);
    });


  }


}
