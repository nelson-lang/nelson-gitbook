#import "nelson_help.typ": *

= urlencode <webtools:urlencode>

Replace special characters in URLs with escape characters.

== Syntax

- #raw("new_url = webread(url)");

== Input argument

/ url: a string: URL to a web service.

== Output argument

/ new\_url: a string: encoded url.

== Description

#strong[urlencode]; replaces special characters in URLs with escape characters.

 Special characters in URLs need to be replaced with escape characters. For example, spaces should be replaced with '%20'.


== Example

``````matlab
url = 'https://httpbin.org/get?query=hello world';
res = urlencode(url)

``````


== See also

#nlink(<webtools:webread>)[webread];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.11.0], [initial version],
)

// Author: Allan CORNET
