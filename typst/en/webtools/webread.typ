#import "nelson_help.typ": *

= webread <webtools:webread>

Read data from RESTful web service to Nelson's variable

== Syntax

- #raw("var = webread(url)");
- #raw("var = webread(url, name1, value1, ... , nameN, valueN)");
- #raw("var = webread(url, name1, value1, ... , nameN, valueN, options)");

== Input argument

/ url: a string: URL to a web service.
/ name1, value1, ... , nameN, valueN: Name-Value Pair Arguments.
/ options: a weboptions object.

== Output argument

/ var: a variable: content from web.

== Description

#strong[webread()]; reads content from the web to nelson's variable.


== Examples

``````matlab
url = 'https://httpbin.org/get';
res = webread(url,weboptions('ContentType','json'));

``````

More demos

``````matlab
edit([modulepath('webtools'),'/examples/webread_demo_1.m'])

``````

Use function\_handle with weboptions and webread

``````matlab
edit([modulepath('webtools'),'/examples/webread_demo_2.m'])

``````

Read data from National Agricultural Statistics Service

``````matlab
edit([modulepath('webtools'),'/examples/webread_demo_3.m'])

``````


== See also

#nlink(<webtools:weboptions>)[weboptions];, #nlink(<webtools:websave>)[websave];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
