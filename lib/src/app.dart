import 'package:google_fonts/google_fonts.dart';
import 'package:travy/src/bloc/destination_bloc.dart';
import 'package:travy/src/common.dart';
import 'package:travy/src/data/destination_repository.dart';
import 'package:travy/src/main_nav.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey.shade100,
        textTheme: GoogleFonts.workSansTextTheme(),
      ),
      home: BlocProvider(
        create: (context) => DestinationBloc(
          destinationRepository: DestinationRepository(),
        )..add(const DestinationLoading()),
        child: const MainNav(),
      ),
    );
  }
}
