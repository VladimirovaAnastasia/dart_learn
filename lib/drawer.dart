class Drawer {
  String symbol;
  String? prefixText;

  String? _lastFigure;

  Drawer(this.symbol, this.prefixText);

  Drawer.namedConstructor(this.symbol, [this.prefixText]);

  void drawLine({required int length}) {
    String result = prefixText ?? '';

    result += '\n${symbol * length}';

    print(result);

    _lastFigure = result;
  }

  void drawRect(int width, int height) {
    String result = prefixText ?? '';

    for (int i = 0; i < height; i++) {
      result += '\n${symbol * width}';
    }

    print(result);

    _lastFigure = result;
  }

  void drawSquare([int length = 4]) {
    String result = prefixText ?? '';

    for (int i = 0; i < length; i++) {
      result += '\n${symbol * length}';
    }

    print(result);

    _lastFigure = result;
  }

  drawLastFigure() {
    if (_lastFigure == null) {
      print('No last figure to draw');

      return;
    }

    print(_lastFigure);
  }
}
