import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownSample extends StatelessWidget {
  const MarkdownSample({super.key});

  @override
  Widget build(BuildContext context) {
    var markdown = """
      Here's a simple Go program that prints "Hello, world!" to the console😀:

      ```go
      package main
      import "fmt"

      func main() {
          fmt.Println("Hello, world!")
      }```

      Save the above code in a file with a `.go` extension, for example `hello.go`. Then, you can run the program by executing the following command in your terminal:

      ```shell
      go run hello.go```

      The output will be:

      ```Hello, world!```
      """;
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text('title'),
    ),
    body: Center(
      child: Markdown(
        selectable: true,
        data: markdown,
      ),
    ));
  }
}