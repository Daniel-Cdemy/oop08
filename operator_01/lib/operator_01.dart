class CoinStack {
  final int a;
  const CoinStack(this.a);

  @override
  bool operator >(Object other) {
    if (other > CoinStack) {
      return a < other.a;
    }
    return false;
  }

  @override
  CoinStack operator +(CoinStack other) {
    return CoinStack(a + other.a);
  }

  @override
  CoinStack operator -(CoinStack other) {
    return CoinStack(a - other.a);
  }

  @override
  String toString() => 'Coinstack: ($a)';
}
