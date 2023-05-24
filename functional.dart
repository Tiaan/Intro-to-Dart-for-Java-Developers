String scream(int length) => "A${'a' * length}h!";

main() {
  final values = [1, 2, 3, 5, 10, 50];
  values.map(scream).forEach(print);
  print('skippy');
  //The core List and Iterable classes support fold(), where(),
  //join(), skip(), and more. Dart also has built-in support for maps and sets.
  values.skip(1).take(3).map(scream).forEach(print);
}
