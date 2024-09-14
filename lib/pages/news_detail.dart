import 'package:flutter/material.dart';
import 'package:flutter_latihan3/widgets/news/news_banner.dart';

class NewsDetail extends StatelessWidget {
  const NewsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: NewsBannerHeaderaDelegate(
              minExtent: topPadding + 40,
              maxExtent: screenHeight / 2
            ),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Title1', textAlign: TextAlign.start, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'Curabitur eu elementum orci. Fusce semper lectus a metus faucibus rutrum. Cras viverra lectus sed justo sollicitudin, auctor porta eros iaculis. Nulla eget nisl sit amet tortor malesuada efficitur. ',
                        ),
                        TextSpan(
                          text: 'Nam viverra urna in feugiat ultricies. Nulla condimentum pulvinar arcu a pellentesque. Pellentesque venenatis molestie diam in laoreet. Donec rhoncus, tellus non efficitur volutpat, lorem augue feugiat lorem, eget ornare mi metus eget orci. Pellentesque scelerisque purus nibh, sit amet vestibulum nulla consectetur at.',
                        ),
                        TextSpan(
                          text: 'Quisque placerat vitae eros id interdum. In arcu nisi, condimentum at metus ut, lacinia blandit ante. Curabitur interdum, arcu sit amet ultrices cursus, tellus est dapibus massa, ut condimentum eros nulla non ipsum. Suspendisse tincidunt massa quis lacus congue tempor. ',
                        )
                      ]
                    ),
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'Curabitur eu elementum orci. Fusce semper lectus a metus faucibus rutrum. Cras viverra lectus sed justo sollicitudin, auctor porta eros iaculis. Nulla eget nisl sit amet tortor malesuada efficitur. ',
                        ),
                        TextSpan(
                          text: 'Nam viverra urna in feugiat ultricies. Nulla condimentum pulvinar arcu a pellentesque. Pellentesque venenatis molestie diam in laoreet. Donec rhoncus, tellus non efficitur volutpat, lorem augue feugiat lorem, eget ornare mi metus eget orci. Pellentesque scelerisque purus nibh, sit amet vestibulum nulla consectetur at.',
                        ),
                        TextSpan(
                          text: 'Quisque placerat vitae eros id interdum. In arcu nisi, condimentum at metus ut, lacinia blandit ante. Curabitur interdum, arcu sit amet ultrices cursus, tellus est dapibus massa, ut condimentum eros nulla non ipsum. Suspendisse tincidunt massa quis lacus congue tempor. ',
                        )
                      ]
                    ),
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'Curabitur eu elementum orci. Fusce semper lectus a metus faucibus rutrum. Cras viverra lectus sed justo sollicitudin, auctor porta eros iaculis. Nulla eget nisl sit amet tortor malesuada efficitur. ',
                        ),
                        TextSpan(
                          text: 'Nam viverra urna in feugiat ultricies. Nulla condimentum pulvinar arcu a pellentesque. Pellentesque venenatis molestie diam in laoreet. Donec rhoncus, tellus non efficitur volutpat, lorem augue feugiat lorem, eget ornare mi metus eget orci. Pellentesque scelerisque purus nibh, sit amet vestibulum nulla consectetur at.',
                        ),
                        TextSpan(
                          text: 'Quisque placerat vitae eros id interdum. In arcu nisi, condimentum at metus ut, lacinia blandit ante. Curabitur interdum, arcu sit amet ultrices cursus, tellus est dapibus massa, ut condimentum eros nulla non ipsum. Suspendisse tincidunt massa quis lacus congue tempor. ',
                        )
                      ]
                    ),
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'Curabitur eu elementum orci. Fusce semper lectus a metus faucibus rutrum. Cras viverra lectus sed justo sollicitudin, auctor porta eros iaculis. Nulla eget nisl sit amet tortor malesuada efficitur. ',
                        ),
                        TextSpan(
                          text: 'Nam viverra urna in feugiat ultricies. Nulla condimentum pulvinar arcu a pellentesque. Pellentesque venenatis molestie diam in laoreet. Donec rhoncus, tellus non efficitur volutpat, lorem augue feugiat lorem, eget ornare mi metus eget orci. Pellentesque scelerisque purus nibh, sit amet vestibulum nulla consectetur at.',
                        ),
                        TextSpan(
                          text: 'Quisque placerat vitae eros id interdum. In arcu nisi, condimentum at metus ut, lacinia blandit ante. Curabitur interdum, arcu sit amet ultrices cursus, tellus est dapibus massa, ut condimentum eros nulla non ipsum. Suspendisse tincidunt massa quis lacus congue tempor. ',
                        )
                      ]
                    ),
                  ),
                ],
              )
            ),
          )
        ]
      )
    );
  }
}