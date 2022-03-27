import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/pokelist/bloc/pokelist_event.dart';
import 'package:pokedex/pokelist/bloc/pokelist_state.dart';

class PokeListBloc extends Bloc<PokeListEvent, PokeListState>{
  PokeListBloc(PokeListState initialState) : super(initialState){
    add(LoadingPokeListEvent());
  }

  @override
  Stream<PokeListState> mapEventToState(PokeListEvent event) async*{
    switch(state.runtimeType){
      case LoadingPokeListEvent:
        yield* _loadPokeListEventToState();
        break;
    }
  }


  Stream<PokeListState> _loadPokeListEventToState() async*{
    yield LoadingPokeListState();
    try{

    } catch(e){
      throw(e);
    }

  }
  
}