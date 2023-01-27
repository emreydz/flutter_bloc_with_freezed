import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_with_freezed/model/game_model.dart';
import 'package:flutter_bloc_with_freezed/service/game_service.dart';
import 'package:meta/meta.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final ProductService productService;
  GameBloc(this.productService) : super(GameDataInitialState()) {
    on<GameEvent>((event, emit) async {
      if (event is LoadGameDataEvent) {
        emit(GameDataLoadingState());
        List<GameModel> apiresult = await productService.fetchProducts();
        if (apiresult == null) {
          emit(GameDataErrorState());
        } else {
          emit(GameDataLoadedState(apiResult: apiresult));
        }
      }
    });
  }
}
