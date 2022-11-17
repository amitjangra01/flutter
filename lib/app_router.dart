import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'app/modules/home/homePage.dart';

final routerProvider = Provider<GoRouter>((ref) => GoRouter(routes: [
      GoRoute(
        path: '/',
        name: 'homePage',
        builder: (context, state) => const HomePage(),
      ),
    ]));
