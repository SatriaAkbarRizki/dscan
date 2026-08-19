import 'package:dscan/nav/navbar.dart';
import 'package:dscan/screen/detail_scan.dart';

class RouteNav {
  static final routeNav = {
    routeRoute: (context) => const Navbar(),
    routeHome: (context) => const DetailScan(),
    routeDetail: (context) => const DetailScan(),
  };
  static final routeRoute = '/';
  static final routeHome = '/home';
  static final routeDetail = '/detail';
}
