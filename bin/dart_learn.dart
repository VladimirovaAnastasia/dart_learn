import 'package:dart_learn/drawer.dart';
import 'package:dart_learn/drawer_provider.dart';

void main(List<String> arguments) {
  var drawer = Drawer('x', 'TEST');

  print('\nFunction drawLine:');
  drawer.drawLine(length: 5);
  print('\nFunction drawRect:');
  drawer.drawRect(6, 4);
  print('\nFunction drawSquare:');
  drawer.drawSquare(3);

  print('\nFunction drawLastFigure:');
  drawer.drawLastFigure();

  print('\nFunction drawLine without prefix text:');
  var drawerWithoutPrefixText = Drawer.namedConstructor('z');
  drawerWithoutPrefixText.drawLine(length: 5);

  var drawerProvider = DrawerProvider();
  Drawer defaultDrawer = drawerProvider.getDefaultDrawer();
  print('\nFunction drawSquare for DrawerProvider:');
  defaultDrawer.drawSquare();
}