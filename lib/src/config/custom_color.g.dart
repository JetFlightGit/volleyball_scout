import 'package:flutter/material.dart';

const success = Color(0xFF47BD9A);
const info = Color(0xFF06C2DE);
const warning = Color(0xFFF9D570);
const danger = Color(0xFFE74C5E);

CustomColors lightCustomColors = const CustomColors(
  sourceSuccess: Color(0xFF47BD9A),
  success: Color(0xFF006C53),
  onSuccess: Color(0xFFFFFFFF),
  successContainer: Color(0xFF81F8D1),
  onSuccessContainer: Color(0xFF002117),
  sourceInfo: Color(0xFF06C2DE),
  info: Color(0xFF006878),
  onInfo: Color(0xFFFFFFFF),
  infoContainer: Color(0xFFA6EEFF),
  onInfoContainer: Color(0xFF001F25),
  sourceWarning: Color(0xFFF9D570),
  warning: Color(0xFF745B00),
  onWarning: Color(0xFFFFFFFF),
  warningContainer: Color(0xFFFFE08C),
  onWarningContainer: Color(0xFF241A00),
  sourceDanger: Color(0xFFE74C5E),
  danger: Color(0xFFB3253C),
  onDanger: Color(0xFFFFFFFF),
  dangerContainer: Color(0xFFFFDADA),
  onDangerContainer: Color(0xFF40000C),
);

CustomColors darkCustomColors = const CustomColors(
  sourceSuccess: Color(0xFF47BD9A),
  success: Color(0xFF63DBB5),
  onSuccess: Color(0xFF00382A),
  successContainer: Color(0xFF00513E),
  onSuccessContainer: Color(0xFF81F8D1),
  sourceInfo: Color(0xFF06C2DE),
  info: Color(0xFF3ED8F5),
  onInfo: Color(0xFF00363F),
  infoContainer: Color(0xFF004E5B),
  onInfoContainer: Color(0xFFA6EEFF),
  sourceWarning: Color(0xFFF9D570),
  warning: Color(0xFFEAC248),
  onWarning: Color(0xFF3D2F00),
  warningContainer: Color(0xFF584400),
  onWarningContainer: Color(0xFFFFE08C),
  sourceDanger: Color(0xFFE74C5E),
  danger: Color(0xFFFFB3B5),
  onDanger: Color(0xFF680019),
  dangerContainer: Color(0xFF910227),
  onDangerContainer: Color(0xFFFFDADA),
);

/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourceSuccess,
    required this.success,
    required this.onSuccess,
    required this.successContainer,
    required this.onSuccessContainer,
    required this.sourceInfo,
    required this.info,
    required this.onInfo,
    required this.infoContainer,
    required this.onInfoContainer,
    required this.sourceWarning,
    required this.warning,
    required this.onWarning,
    required this.warningContainer,
    required this.onWarningContainer,
    required this.sourceDanger,
    required this.danger,
    required this.onDanger,
    required this.dangerContainer,
    required this.onDangerContainer,
  });

  final Color? sourceSuccess;
  final Color? success;
  final Color? onSuccess;
  final Color? successContainer;
  final Color? onSuccessContainer;
  final Color? sourceInfo;
  final Color? info;
  final Color? onInfo;
  final Color? infoContainer;
  final Color? onInfoContainer;
  final Color? sourceWarning;
  final Color? warning;
  final Color? onWarning;
  final Color? warningContainer;
  final Color? onWarningContainer;
  final Color? sourceDanger;
  final Color? danger;
  final Color? onDanger;
  final Color? dangerContainer;
  final Color? onDangerContainer;

  @override
  CustomColors copyWith({
    Color? sourceSuccess,
    Color? success,
    Color? onSuccess,
    Color? successContainer,
    Color? onSuccessContainer,
    Color? sourceInfo,
    Color? info,
    Color? onInfo,
    Color? infoContainer,
    Color? onInfoContainer,
    Color? sourceWarning,
    Color? warning,
    Color? onWarning,
    Color? warningContainer,
    Color? onWarningContainer,
    Color? sourceDanger,
    Color? danger,
    Color? onDanger,
    Color? dangerContainer,
    Color? onDangerContainer,
  }) {
    return CustomColors(
      sourceSuccess: sourceSuccess ?? this.sourceSuccess,
      success: success ?? this.success,
      onSuccess: onSuccess ?? this.onSuccess,
      successContainer: successContainer ?? this.successContainer,
      onSuccessContainer: onSuccessContainer ?? this.onSuccessContainer,
      sourceInfo: sourceInfo ?? this.sourceInfo,
      info: info ?? this.info,
      onInfo: onInfo ?? this.onInfo,
      infoContainer: infoContainer ?? this.infoContainer,
      onInfoContainer: onInfoContainer ?? this.onInfoContainer,
      sourceWarning: sourceWarning ?? this.sourceWarning,
      warning: warning ?? this.warning,
      onWarning: onWarning ?? this.onWarning,
      warningContainer: warningContainer ?? this.warningContainer,
      onWarningContainer: onWarningContainer ?? this.onWarningContainer,
      sourceDanger: sourceDanger ?? this.sourceDanger,
      danger: danger ?? this.danger,
      onDanger: onDanger ?? this.onDanger,
      dangerContainer: dangerContainer ?? this.dangerContainer,
      onDangerContainer: onDangerContainer ?? this.onDangerContainer,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourceSuccess: Color.lerp(sourceSuccess, other.sourceSuccess, t),
      success: Color.lerp(success, other.success, t),
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t),
      successContainer: Color.lerp(successContainer, other.successContainer, t),
      onSuccessContainer:
          Color.lerp(onSuccessContainer, other.onSuccessContainer, t),
      sourceInfo: Color.lerp(sourceInfo, other.sourceInfo, t),
      info: Color.lerp(info, other.info, t),
      onInfo: Color.lerp(onInfo, other.onInfo, t),
      infoContainer: Color.lerp(infoContainer, other.infoContainer, t),
      onInfoContainer: Color.lerp(onInfoContainer, other.onInfoContainer, t),
      sourceWarning: Color.lerp(sourceWarning, other.sourceWarning, t),
      warning: Color.lerp(warning, other.warning, t),
      onWarning: Color.lerp(onWarning, other.onWarning, t),
      warningContainer: Color.lerp(warningContainer, other.warningContainer, t),
      onWarningContainer:
          Color.lerp(onWarningContainer, other.onWarningContainer, t),
      sourceDanger: Color.lerp(sourceDanger, other.sourceDanger, t),
      danger: Color.lerp(danger, other.danger, t),
      onDanger: Color.lerp(onDanger, other.onDanger, t),
      dangerContainer: Color.lerp(dangerContainer, other.dangerContainer, t),
      onDangerContainer:
          Color.lerp(onDangerContainer, other.onDangerContainer, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith();
  }
}
