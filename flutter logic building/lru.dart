import 'dart:collection';

class LRUCache {
  final int capacity;
  final LinkedHashMap<String, String> _cache = LinkedHashMap();
  LRUCache(this.capacity);

  String? get(String key) {
    // your code here
    if (!_cache.containsKey(key)) {
      return null;
    }

    final value = _cache.remove(key);
    _cache[key] = value!;
    return value;
  }

  void put(String key, String value) {
    // your code here
    if (_cache.containsKey(key)) {
      _cache.remove(key);
      _cache[key] = value;
      return;
    }

    if (_cache.length >= capacity) {
      _cache.remove(_cache.keys.first);
    }
    _cache[key] = value;
  }
}

void main() {
  final c = LRUCache(2);
  c.put('a', '1');
  c.put('b', '2');
  c.put('c', '3'); // should evict 'a'
  print(c.get('c')); // expected null, you'd get '1'
}
