import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pragma_test/app/routes/routes.dart';
import 'package:pragma_test/feature/home/bloc/breeds_bloc.dart';
import 'package:pragma_ui/pragma_ui.dart';

class MainDashboardMobile extends StatelessWidget {
  MainDashboardMobile({super.key});
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Column(
        children: [
          SizedBox(
            height: AppSpacing.md,
          ),
          Text(
            'CatBreeds',
            style: UITextStyle.titles.title2Medium,
          ),
          SizedBox(
            height: AppSpacing.md,
          ),
          AppTextField(
            suffixIcon: Icons.search,
            controller: searchController,
            onChanged: (query) {
              if (query.length > 2) {
                context.read<BreedsBloc>().add(SearchBreedsEvent(query: query));
              } else {
                context.read<BreedsBloc>().add(SearchAboveBreedsEvent());
              }
            },
          ),
          BlocBuilder<BreedsBloc, BreedsState>(
            builder: (context, state) {
              return state.listBreedsl != null && state.listBreedsl!.isNotEmpty
                  ? Flexible(
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: state.listBreedsl!.length,
                        itemBuilder: (context, index) {
                          final data = state.listBreedsl![index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: BaseCard(
                                child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Nombre de raza: ${data.name.toString()}',
                                        style: UITextStyle.paragraphs.paragraph1Regular,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          context.go(RoutesNames.detail, extra: [
                                            data.name.toString(),
                                            data.image.toString(),
                                            data.description.toString(),
                                          ]);
                                        },
                                        child: Text(
                                          'Más...',
                                          style: UITextStyle.paragraphs.paragraph1Regular,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Image.network(
                                    data.image.toString(),
                                    height: MediaQuery.of(context).size.width / 2,
                                  ),
                                  SizedBox(
                                    height: AppSpacing.lg,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Pais de Origen: ${data.countryCode}',
                                        style: UITextStyle.paragraphs.paragraph1Regular,
                                      ),
                                      Text(
                                        'Pais de Origen: ${data.intelligence}',
                                        style: UITextStyle.paragraphs.paragraph1Regular,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: AppSpacing.lg,
                                  ),
                                ],
                              ),
                            )),
                          );
                        },
                      ),
                    )
                  : Center(child: CircularProgressIndicator());
            },
          ),
        ],
      ),
    );
  }
}
