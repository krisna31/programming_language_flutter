class ProgrammingLanguage {
  final String name;
  final String description;

  ProgrammingLanguage({required this.name, required this.description});
}

List<ProgrammingLanguage> availableLanguages = [
  ProgrammingLanguage(
    name: 'Dart',
    description:
        'Dart is a client-optimized language for fast apps on any platform.',
  ),
  ProgrammingLanguage(
    name: 'Kotlin',
    description:
        'Kotlin is an open-source statically typed programming language that targets the JVM, Android, JavaScript and Native.',
  ),
  ProgrammingLanguage(
    name: 'Java',
    description:
        'Java is a class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.',
  ),
  ProgrammingLanguage(
    name: 'Python',
    description:
        'Python is an interpreted, high-level and general-purpose programming language.',
  ),
  ProgrammingLanguage(
    name: 'C++',
    description:
        'C++ is a general-purpose programming language created by Bjarne Stroustrup as an extension of the C programming language, or "C with Classes".',
  ),
  ProgrammingLanguage(
    name: 'C#',
    description:
        'C# is a general-purpose, multi-paradigm programming language encompassing static typing, strong typing, lexically scoped, imperative, declarative, functional, generic, object-oriented, and component-oriented programming disciplines.',
  ),
  ProgrammingLanguage(
    name: 'JavaScript',
    description:
        'JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification.',
  ),
  ProgrammingLanguage(
    name: 'PHP',
    description:
        'PHP is a general-purpose scripting language geared towards web development.',
  ),
  ProgrammingLanguage(
    name: 'Go',
    description:
        'Go is a statically typed, compiled programming language designed at Google by Robert Griesemer, Rob Pike, and Ken Thompson.',
  ),
  ProgrammingLanguage(
    name: 'Rust',
    description:
        'Rust is a multi-paradigm programming language designed for performance and safety, especially safe concurrency.',
  ),
];
