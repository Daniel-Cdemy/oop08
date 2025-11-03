import 'package:operator_01/operator_01.dart';

void main() {
  final a = CoinStack([200, 100, 100, 50, 10, 10, 5, 1]);
  final b = CoinStack([100, 50, 5]);
  final c = CoinStack([100, 50, 50, 5]);

  final h = a + b;
  print(h);

  final i = a + c;
  print(i);

  final k = a - b;
  print(k);

  final l = a - c;
  print(l);
}
