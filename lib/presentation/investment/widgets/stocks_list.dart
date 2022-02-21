import 'package:akt_token/domain/shared/crypto_currency.dart';
import 'package:akt_token/presentation/theme/app_colors.dart';
import 'package:akt_token/shared/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../../theme/app_dimensions.dart';

class StocksList extends StatelessWidget {
  const StocksList({
    required this.title,
    required this.cryptos,
    Key? key,
  }) : super(key: key);

  final String title;
  final List<CryptoCurrency> cryptos;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(bottom: AppDimensions.baseVerticalListSpacing),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: context.textTheme.bodyText2?.copyWith(
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: cryptos.map(
                (crypto) {
                  final Color backgroundColor = Color(
                    (math.Random().nextDouble() * 0xFFFFFF).toInt(),
                  ).withOpacity(1.0);

                  final variationColor = crypto.value.valueHasIncreased
                      ? AppColors.greenValueUp
                      : AppColors.redValueDown;

                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: context.pw(0.28),
                          width: context.pw(0.28),
                          decoration: BoxDecoration(
                            color: backgroundColor,
                            borderRadius: BorderRadius.circular(
                              AppDimensions.mdRadius,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          crypto.code,
                          style: context.textTheme.bodyText2?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          crypto.value.formatted,
                          style: context.textTheme.caption,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Transform.rotate(
                              angle: crypto.value.valueHasIncreased
                                  ? -math.pi / 4
                                  : math.pi / 4,
                              child: Icon(
                                Icons.arrow_right,
                                color: variationColor,
                                size: 18,
                              ),
                            ),
                            Text(
                              crypto.value.formattedVariation,
                              style: context.textTheme.caption?.copyWith(
                                color: variationColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
