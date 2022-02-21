import 'package:akt_token/presentation/theme/app_dimensions.dart';
import 'package:akt_token/shared/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class InvestmentExpandableAppBar extends StatelessWidget {
  const InvestmentExpandableAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      stretchModes: const [
        StretchMode.fadeTitle,
        StretchMode.zoomBackground,
        StretchMode.blurBackground,
      ],
      background: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/akt_background.png",
              width: double.maxFinite,
              fit: BoxFit.fitWidth,
            ),
          ),
          // Color gradient container
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 2 * kToolbarHeight + context.mediaQuery.viewPadding.top,
              decoration: BoxDecoration(
                color: AppColors.scaffoldBackgroundColor,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.scaffoldBackgroundColor.withOpacity(0.75),
                    AppColors.scaffoldBackgroundColor.withOpacity(0.0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      title: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: context.ph(0.28),
            left: AppDimensions.smallPadding,
            right: AppDimensions.smallPadding,
          ),
          child: Column(
            children: [
              Text(
                context.tr.appTitle,
                style: context.textTheme.headline1,
              ),
              const SizedBox(height: 5),
              Text(
                context.tr.investmentsDescription(25),
                textAlign: TextAlign.center,
                style: context.textTheme.headline4?.copyWith(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: context.textTheme.headline5!.fontSize! * 0.75,
                ),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      context.tr.learnMore,
                      style: context.textTheme.bodyText2!.copyWith(
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.arrow_right_alt,
                      size: 14,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
