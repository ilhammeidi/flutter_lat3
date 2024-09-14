import 'package:flutter/material.dart';
import 'package:flutter_latihan3/widgets/news/news_banner.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class NewsDetail extends StatelessWidget {
  const NewsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    var markdown = """
      ### Dandelion Starter - React Website Template
----------
**Dandelion Starter** Dandelion Pro is admin dashboard template based on **React Redux Material UI**. It provides you clean modern design and high performance react app with various color theme. This template has been built to makes the development process easy and fast for you, which is supported by MUI v5.x, tss, redux, webpack, npm modern workflow and flexible layout with flexbox.

# Template Feature

-   Built with one of most popular javascript library React.JS and Redux
-   Use Google Material Design and Icons
-   Easy to manage data collection with immutable.js
-   Written in ES6 / ES 2015
-   Responsive design
-   JSS (CSS in JS)
-   Clean code maintained by eslint

# Get Ultimate Version
![enter image description here](https://github.com/ilhammeidi/dandelion-docs/blob/gh-pages/images/banner.jpg?raw=true)

[GET IT NOW on Envato Market](https://themeforest.net/item/dandelion-pro-react-admin-dashboard-template/22890261)

[SEE DEMO](http://dandelion.ux-maestro.com)


# Installation

 - Clone this project
 - Install module dependencies by run this script in terminal
    `npm install`
 - After finish downloading, then build Build Webpack DLL dependencies(If necessary).
	 `npm run build:dll`
 - Finally run the app.
	 `npm start`
 - Navigate to  [http://localhost:3001](http://localhost:3001)

# Deployment

 - First you need to build the production assets first
    `npm run build`
 - Then start the app
    `npm run start:prod`
 - If you want run it in background you may try PM2 [https://www.npmjs.com/package/pm2]( https://www.npmjs.com/package/pm2) Then run this command:
    `node node_modules/.bin/cross-env NODE_ENV=production pm2 start server`
 - Navigate to  [http://localhost:3001](http://localhost:3001)

# Enable Direct Code Preview
To make documenation easy and effective to access and implement, we attached source code in every component demos. We call it Direct Code Preview. This feature can be used in purchased product only (not available in demo).

 - Open config file  `/app/config/codePreview.js`
 - By default set by false
 - Change to  `enable: true`, to enabled direct code preview
 -   Test with any component demo, example in  [http://localhost:8080/app/tables/advanced-table](http://localhost:8080/app/tables/advanced-table).
-   Then at the bottom of every components you will see  **<> Show Code**  Button. Just click it.
-   The source code of that components will show as well.
-   You can see through, copy and paste directly any component in front of your eyes.

## License
This project is licensed under the terms of the [MIT license](https://github.com/ilhammeidi/boss-lite/blob/master/LICENSE.txt).


 
      """;
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
                  MarkdownBody(
                    shrinkWrap: true,
                    selectable: true,
                    data: markdown,
                    onTapLink: (text, url, title){
                      debugPrint('text: $text url: $url');
                    },
                    styleSheet: MarkdownStyleSheet(
                      h1: const TextStyle(fontSize: 24, color: Colors.blue), 
                      code: const TextStyle(fontSize: 14, color: Colors.green),// new end
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