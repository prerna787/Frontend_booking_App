import 'package:booking_app/presentation/components/loader.dart';
import 'package:booking_app/presentation/components/spacers.dart';
import 'package:booking_app/views/Dashboard/bloc/dashboard_bloc.dart';
import 'package:booking_app/views/search_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}): super(key: key);
  final TextEditingController _city=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
         'Search Hotels here!',
        ),
          actions: [IconButton(onPressed: (){Navigator.of(context)
              .pushNamed('/');
          }, icon: Icon(Icons.logout))]
      ),
      body: BlocConsumer<DashboardBloc, DashboardState>(
        listener: (context, state) {
         if (state is SearchLoaded){
             Navigator.of(context)
                 .pushNamed('/hotelList', arguments: state.hotelResponse);
             };
        },
        builder: (context, state) {
          if (state is DashboardLoading) {
            return LoadingWidget(
              child: initialLayout(context),
            );
          } else {
            return initialLayout(context);
          }
        },
      ),
    );
  }

  Widget initialLayout(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _city,
                    decoration: InputDecoration(
                      hintText: 'Enter city',
                      ),

                  ),
                ),
              ],
            ),

            const HeightSpacer(myHeight: 10.00),
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<DashboardBloc>(context)
                      .add(Search(_city.text));
                  },
                child: const Text("Search")),


          ],

        ),
      );
}
