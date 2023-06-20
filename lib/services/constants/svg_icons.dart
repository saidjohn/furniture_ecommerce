import 'package:flutter_svg/svg.dart';
import 'colors.dart';
import 'icons.dart';

abstract class SvgIcon {
  static final SvgPicture add = SvgPicture.asset(CustomIcons.add.path);
  static final SvgPicture armchair = SvgPicture.asset(CustomIcons.armchair.path);
  static final SvgPicture bag = SvgPicture.asset(CustomIcons.bag.path);
  static final SvgPicture bed = SvgPicture.asset(CustomIcons.bed.path);
  static final SvgPicture bell = SvgPicture.asset(CustomIcons.bell.path);
  static final SvgPicture bellFill = SvgPicture.asset(CustomIcons.bellFill.path);
  static final SvgPicture card = SvgPicture.asset(CustomIcons.card.path);
  static final SvgPicture cart = SvgPicture.asset(CustomIcons.cart.path);
  static final SvgPicture cart2 = SvgPicture.asset(CustomIcons.cart2.path);
  static final SvgPicture chair = SvgPicture.asset(CustomIcons.chair.path);
  static final SvgPicture checkmark = SvgPicture.asset(CustomIcons.checkmark.path);
  static final SvgPicture edit = SvgPicture.asset(CustomIcons.edit.path);
  static final SvgPicture home = SvgPicture.asset(CustomIcons.home.path);
  static final SvgPicture homeFill = SvgPicture.asset(CustomIcons.homeFill.path);
  static final SvgPicture lamp = SvgPicture.asset(CustomIcons.lamp.path);
  static final SvgPicture marker = SvgPicture.asset(CustomIcons.marker.path);
  static final SvgPicture markerFill = SvgPicture.asset(CustomIcons.markerFill.path);
  static final SvgPicture minus = SvgPicture.asset(CustomIcons.minus.path);
  static final SvgPicture person = SvgPicture.asset(CustomIcons.person.path);
  static final SvgPicture personFill = SvgPicture.asset(CustomIcons.personFill.path);
  static final SvgPicture plus = SvgPicture.asset(CustomIcons.plus.path);
  static final SvgPicture popular = SvgPicture.asset(CustomIcons.popular.path);
  static final SvgPicture search = SvgPicture.asset(CustomIcons.search.path);
  static final SvgPicture star = SvgPicture.asset(CustomIcons.star.path);
  static final SvgPicture table = SvgPicture.asset(CustomIcons.table.path);
  static final SvgPicture cancel = SvgPicture.asset(CustomIcons.cancel.path);
  static final SvgPicture logo = SvgPicture.asset(CustomIcons.logo.path);
  static final SvgPicture markerDark = SvgPicture.asset(CustomIcons.marker.path, color: AppColors.c303030);
}