import 'package:batch3_bloc/counter_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CounterBloc counterBloc;

  setUp(() {
    counterBloc = CounterBloc();
  });
  blocTest<CounterBloc, int>(
    'test counter increment 1',
    build: () => counterBloc,
    act: (bloc) => bloc.add(CounterIncrementEvent()),
    expect: () => [1],
  );

  blocTest<CounterBloc, int>(
    'test counter decrement 1',
    build: () => counterBloc,
    act: (bloc) => bloc.add(CounterDecrementEvent()),
    expect: () => [-1],
  );
}
