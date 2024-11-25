import 'package:api_helper/api_helper.dart';
import 'package:api_repository/api_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'breeds_event.dart';
part 'breeds_state.dart';

class BreedsBloc extends Bloc<BreedsEvent, BreedsState> {
  BreedsBloc({
    required BreedsRepository breedsRepository,
  })  : _breedsRepository = breedsRepository,
        super(BreedsState()) {
    on<BreedsEvent>((event, emit) {});

    on<GetBreedsEvent>((event, emit) async {
      final result = await _breedsRepository.getBreeds(
        headers: {
          'x-api-key': 'live_99Qe4Ppj34NdplyLW67xCV7Ds0oSLKGgcWWYnSzMJY9C0QOu0HUR4azYxWkyW2nr',
        },
      );

      result.fold((l) {}, (r) {
        emit(state.copyWith(listBreedsl: r, aboveListBreedsl: r));
      });
    });
    on<SearchBreedsEvent>((event, emit) async {
      final data = state.listBreedsl!.where((breed) {
        return breed.name!.toLowerCase().contains(event.query);
      }).toList();

      emit(state.copyWith(
        listBreedsl: data,
      ));
    });
    on<SearchAboveBreedsEvent>((event, emit) async {
      emit(state.copyWith(
        listBreedsl: state.aboveListBreedsl,
        aboveListBreedsl: state.aboveListBreedsl,
      ));
    });
  }
  final BreedsRepository _breedsRepository;
}
