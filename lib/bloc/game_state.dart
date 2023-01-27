part of 'game_bloc.dart';

abstract class GameState extends Equatable {
  @override
  List<Object> get props => [];
}

class GameDataInitialState extends GameState {}

class GameDataLoadingState extends GameState {}

class GameDataLoadedState extends GameState {
  final List<GameModel> apiResult;
  GameDataLoadedState({
    required this.apiResult,
  });
}

class GameDataErrorState extends GameState {}
