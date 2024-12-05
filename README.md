# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code: insufficient exception handling. The `fetchData` function makes a network request and parses JSON. The initial implementation only prints exceptions to the console, which makes debugging difficult.

The solution improves error handling by explicitly handling various potential issues and providing more informative error messages.