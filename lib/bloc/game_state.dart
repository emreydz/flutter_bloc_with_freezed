part of 'game_bloc.dart';

abstract class GameState extends Equatable {
  @override
  List<Object> get props => [];
}

class GameDataInitialState extends GameDataState {}

class GameDataLoadingState extends GameDataState {}

class GameDataLoadedState extends GameDataState {
  final List<GameModel> apiResult;
  const GameDataLoadedState({
    required this.apiResult,
  });
}

class GameDataErrorState extends GameDataState {}
