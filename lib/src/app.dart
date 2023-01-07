import 'package:google_fonts/google_fonts.dart';
import 'package:travy/src/common.dart';
import 'package:travy/src/main_nav.dart';
import 'package:travy/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey.shade100,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      home: const MainNav(),
    );
  }
}
