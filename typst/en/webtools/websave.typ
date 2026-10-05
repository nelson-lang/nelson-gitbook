#import "nelson_help.typ": *

= websave <webtools:websave>

Save data from RESTful web service to file

== Syntax

- #raw("result_filename = websave(filename, url)");
- #raw("result_filename = websave(filename, url, name1, value1, ... , nameN, valueN)");
- #raw("result_filename = websave(filename, url, name1, value1, ... , nameN, valueN, options)");

== Input argument

/ filename: a string: name of file to save content to.
/ url: a string: URL to a web service.
/ name1, value1, ... , nameN, valueN: Name-Value Pair Arguments.
/ options: a weboptions object.

== Output argument

/ result\_filename: a string: full filename path.

== Description

#strong[websave()]; saves content from the web to filename.

 websave function returns the full filename path as result\_filename.


== Example

``````matlab
url ='https://httpbin.org/get';
filename = [tempdir(), 'test.txt'];
destination_filename = websave(filename, url, weboptions('ContentType','json'));
txt = fileread(filename)
``````


== See also

#nlink(<webtools:weboptions>)[weboptions];, #nlink(<webtools:webread>)[webread];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
