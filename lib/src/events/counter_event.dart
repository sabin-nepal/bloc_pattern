abstract class CounterEvent {}

class Increment extends CounterEvent {}

class Decrement extends CounterEvent {}

class SetCounter extends CounterEvent {
  final int setTo;
  SetCounter({required this.setTo});
}
