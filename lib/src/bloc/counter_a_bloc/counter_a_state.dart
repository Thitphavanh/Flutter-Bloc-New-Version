part of 'counter_a_bloc.dart';

abstract class CounterAState extends Equatable {
  const CounterAState();

  @override
  List<Object> get props => [];
}

class CounterAInitial extends CounterAState {}
