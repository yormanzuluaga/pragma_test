part of 'breeds_bloc.dart';

class BreedsState extends Equatable {
  const BreedsState({
    this.listBreedsl = const [],
    this.aboveListBreedsl = const [],
  });
  final List<BreedsModel>? listBreedsl;
  final List<BreedsModel>? aboveListBreedsl;

  BreedsState copyWith({
    List<BreedsModel>? listBreedsl,
    List<BreedsModel>? aboveListBreedsl,
  }) {
    return BreedsState(
      listBreedsl: listBreedsl ?? this.listBreedsl,
      aboveListBreedsl: aboveListBreedsl ?? this.aboveListBreedsl,
    );
  }

  @override
  List<Object?> get props => [
        listBreedsl,
        aboveListBreedsl,
      ];
}
