part of 'game_bloc.dart';

abstract class GameEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadGameDataEvent extends GameEvent {}
