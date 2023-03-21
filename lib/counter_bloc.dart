import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementEvent>(
      (event, emit) {
        emit(state + 1);
      },
    );
    on<CounterDecrementEvent>(
      (event, emit) {
        emit(state - 1);
      },
    );
  }

  // int _value = 0;

  // CounterBloc() {
  //   streamEvent.listen(mappingEventToState);
  // }

  // final StreamController<CounterEvent> eventController = StreamController();
  // final StreamController<int> stateController = StreamController();

  // StreamSink<CounterEvent> get sinkEvent => eventController.sink;
  // Stream<CounterEvent> get streamEvent => eventController.stream;

  // StreamSink<int> get sinkState => stateController.sink;
  // Stream<int> get streamState => stateController.stream;

  // void mappingEventToState(CounterEvent event) {
  //   if (event is CounterIncrementEvent) {
  //     _value = _value + 1;
  //   } else {
  //     _value = _value - 1;
  //   }
  //   sinkState.add(_value);
  // }
}

abstract class CounterEvent {}

class CounterIncrementEvent extends CounterEvent {}

class CounterDecrementEvent extends CounterEvent {}
