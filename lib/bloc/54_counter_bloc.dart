import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc<int, int> {
  @override
  // TODO: implement initialState
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(int event) async* {
    // TODO: implement mapEventToState
    yield event;
  }
}
