part of 'breeds_bloc.dart';

sealed class BreedsEvent extends Equatable {
  const BreedsEvent();

  @override
  List<Object> get props => [];
}

class GetBreedsEvent extends BreedsEvent {
  const GetBreedsEvent();

  @override
  List<Object> get props => [];
}

class SearchBreedsEvent extends BreedsEvent {
  final String query;

  const SearchBreedsEvent({required this.query});

  @override
  List<Object> get props => [query];
}

class SearchAboveBreedsEvent extends BreedsEvent {
  const SearchAboveBreedsEvent();

  @override
  List<Object> get props => [];
}
