// import 'package:bloc/bloc.dart';
// import 'package:booking_app/data/model/user_model.dart';
// import 'package:booking_app/data/repository/user_repository.dart';
// import 'package:meta/meta.dart';

// part 'search_event.dart';
// part 'search_state.dart';



// class SearchBloc extends Bloc<SearchEvent, SearchState> {
//   late HotelModel data;
//   final UserRepo userRepo;

//   SearchBloc(this.userRepo) : super(SearchInitial()) {
//     on<SearchEvent>((event, emit) async {
//       if (event is SendData) {
//         emit(SearchLoading());
//         await Future.delayed(const Duration(seconds: 3), () async {
//           data = await userRepo.fetchDetails();
//           emit(HomepageLoaded(data));
//         });
//       }
//     });
//   }
// }
