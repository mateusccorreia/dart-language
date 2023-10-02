//Asynchronous programming: Streams

// What's the point?
// Streams provide an asynchronous sequence of data.
// Data sequences include user-generated events and data read from files.
// You can process a stream using either await for or listen() from the Stream API.
// Streams provide a way to respond to errors.
// There are two kinds of streams: single subscription or broadcast.

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  try {
    await for (final value in stream) {
      sum += value;
    }
  } catch (e) {
    return -1;
  }
  return sum;
}

Stream<int> count(int to) async* {
  for (int i = 1; i <= to; i++) {
    if (i == 4) {
      throw Exception('Intentional execption');
    } else {
      yield i;
    }
  }
}

void main() async {
  var any = count(10);
  var sum = await sumStream(any);
  print(sum);
}

//Trabalhando com fluxos
//A classe Stream contém vários métodos auxiliares

Future<int> lastPositive(Stream<int> stream) => stream.lastWhere((x) => x >= 0);

//Methods that process a stream

// Future<T> get first;
// Future<bool> get isEmpty;
// Future<T> get last;
// Future<int> get length;
// Future<T> get single;
// Future<bool> any(bool Function(T element) test);
// Future<bool> contains(Object? needle);
// Future<E> drain<E>([E? futureValue]);
// Future<T> elementAt(int index);
// Future<bool> every(bool Function(T element) test);
// Future<T> firstWhere(bool Function(T element) test, {T Function()? orElse});
// Future<S> fold<S>(S initialValue, S Function(S previous, T element) combine);
// Future forEach(void Function(T element) action);
// Future<String> join([String separator = '']);
// Future<T> lastWhere(bool Function(T element) test, {T Function()? orElse});
// Future pipe(StreamConsumer<T> streamConsumer);
// Future<T> reduce(T Function(T previous, T element) combine);
// Future<T> singleWhere(bool Function(T element) test, {T Function()? orElse});
// Future<List<T>> toList();
// Future<Set<T>> toSet();

//Por exemplo, algumas implementações poderiam ser:
// Future<bool> contains(Object? needle) async {
//   await for (final event in this) {
//     if (event == needle) return true;
//   }
//   return false;
// }

// Future forEach(void Function(T element) action) async {
//   await for (final event in this) {
//     action(event);
//   }
// }

// Future<List<T>> toList() async {
//   final result = <T>[];
//   await forEach(result.add);
//   return result;
// }

// Future<String> join([String separator = '']) async =>
//   (await toList()).join(separator);

