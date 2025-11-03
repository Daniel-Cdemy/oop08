class CoinStack {
  List<int> coins;

  CoinStack(this.coins);

  int get value {
    var result = 0;
    for (var i = 0; i < coins.length; i++) {
      result += coins[i];
    }
    return result;
  }

  bool operator <(CoinStack other) => value < other.value;
  bool operator >(CoinStack other) => value > other.value;
  bool operator <=(CoinStack other) => value <= other.value;
  bool operator >=(CoinStack other) => value >= other.value;

  @override
  bool operator ==(Object other) {
    if (other is! CoinStack) {
      return false;
    }
    return value == other.value;
  }

  CoinStack operator +(CoinStack other) =>
      CoinStack([...coins, ...other.coins]);

  CoinStack? operator -(CoinStack other) {
    final newCoins = [...coins];
    for (final coin in other.coins) {
      if (newCoins.contains(coin)) {
        newCoins.remove(coin);
      } else {
        return null;
      }
    }
    return CoinStack(newCoins);
  }

  @override
  String toString() => 'Geldstapel mit Münzen: ${coins.join(', ')}';
}
