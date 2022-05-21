import 'package:ecommerce_app/src/pages/main_page.dart';
import 'package:ecommerce_app/src/pages/product_details.dart';
import 'package:ecommerce_app/src/widgets/custom_route.dart';
import 'package:flutter/material.dart';

// import 'package:google_fonts/google_fonts.dart';
// 
import 'src/config/route.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce ',
      debugShowCheckedModeBanner: false,
      routes: Routes.getRoute(),
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name!.contains('detail')) {
          return CustomRoute<bool>(
              builder: (BuildContext context) => ProductDetailPage());
        } else {
          return CustomRoute<bool>(
              builder: (BuildContext context) => MainPage(title: '',));
        }
      },
      initialRoute: "MainPage",
    );
  }
}
