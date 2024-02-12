import 'drawer.dart';

class DrawerProvider {
  String symbol;
  String? prefixText;

  late final _defaultDrawer = _createDefaultDrawer();

  DrawerProvider([this.symbol = 'o', this.prefixText]);

  Drawer _createDefaultDrawer() {
    return Drawer.namedConstructor(symbol, prefixText);
  }

  Drawer getDefaultDrawer() {
    return _defaultDrawer;
  }
}