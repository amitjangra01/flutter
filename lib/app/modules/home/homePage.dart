import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travala_clone/app/modules/home/view/common/banners.dart';
import 'package:travala_clone/app/modules/home/view/common/bottom_details.dart';
import 'package:travala_clone/app/modules/home/view/common/countries_view.dart';
import 'package:travala_clone/app/modules/home/view/common/tab_bar.dart';
import 'package:travala_clone/app/modules/home/view/web/web_tab_bar.dart';
import 'package:travala_clone/app/widget_extra/responsive.dart';

import 'view/common/main_container.dart';
import '../stays/view/mobile/app_bar.dart';
import 'view/common/reviews_cards_row.dart';
import 'view/common/service_cards_row.dart';
import 'view/web/web_banners.dart';
import 'view/web/web_review_card_row.dart';
import 'view/web/web_service_cards_row.dart';
import 'view/web/web_view_app_bar.dart';
import 'view/web/web_view_bottom_detail.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Responsive(
          isMobile: ListView(
            children: const [
              MobileAppBar(),
              MainContainer(
                child: MobileTabBarView(),
              ),
              MobileServiceCardsRow(),
              Banners(),
              ReviewsCardRow(),
              CountriesView(),
              BottomDetails(),
            ],
          ),
          isWeb: ListView(
            children: const [
              WebViewAppBar(),
              MainContainer(
                child: WebTabBarView(),
              ),
              WebServiceCardsRow(),
              WebBanners(),
              WebReviewsCardRow(),
              CountriesView(),
              WebBottomDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
