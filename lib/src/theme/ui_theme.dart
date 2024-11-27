import 'package:flutter_belgium_slides/src/theme/theme.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

class FlutterBelgiumSlidesUiThemeMapper {
  static ImpaktfullUiTheme mapToUiTheme(FlutterBelgiumSlidesTheme theme) => ImpaktfullUiTheme.custom(
        primary: theme.colors.accent,
        accent: theme.colors.accent,
        secondary: theme.colors.accent,
        canvas: theme.colors.canvas,
        card: theme.colors.card,
        borderRadiusExtraLarge: theme.dimens.borderRadius,
        borderRadiusLarge: theme.dimens.borderRadius,
        borderRadius: theme.dimens.borderRadius,
        borderRadiusSmall: theme.dimens.borderRadius,
        borderRadiusExtraSmall: theme.dimens.borderRadius,
      );
}
