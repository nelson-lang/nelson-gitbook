#import "nelson_help.typ": *

= weboptions <webtools:weboptions>

Specify parameters for RESTful web service

== Syntax

- #raw("options = weboptions()");
- #raw("options = weboptions(name, value)");

== Input argument

/ name: a string.
/ value: a variable: value corresponding to name field.

== Output argument

/ options: a weboptions object.

== Description

#strong[options \= weboptions()]; returns default weboptions object.

 weboptions object can be an optional input argument to the webread, websave, and webwrite builtin.

 Name-Value Pair Arguments:

 #strong[UserAgent]; User agent identification: a string or character vector.

 #strong[Timeout]; Time out connection duration: positive numeric scalar or Inf value.

 #strong[Username]; User identifier: a string or character vector.

 #strong[Password]; User authentication password: a string or character vector.

 #strong[KeyName]; Name of key: a string or character vector.

 #strong[KeyValue]; Value of key: a string scalar, character vector, numeric or logical.

 #strong[HeaderFields]; Names and values of header fields: m-by-2 array of strings or cell array of character vectors

 #strong[ContentType]; Content type: a string scalar or character vector.

 supported value: 'auto', 'text', 'image', 'binary', 'table', 'audio', 'json', 'xmldom', 'raw'

 #strong[ContentReader]; Content reader: an function handle.

 #strong[MediaType]; Media type: a string or character vector.

 supported value: 'auto', 'application\/x-www-form-urlencoded'

 #strong[RequestMethod]; HTTP request method: a string or character vector.

 supported value: 'auto', 'get', 'post', 'put', 'delete', 'patch'

 #strong[ArrayFormat];: 'csv' (default), 'json', 'repeating' or 'php'

 #strong[CertificateFilename]; Filename of root certificates: 'default', empty, or an existing file.

 #strong[FollowLocation]; tells the library to follow any Location: header redirect that an HTTP server sends in a 30x response: a logical, false by default.


== Example

``````matlab
weboptions()
options = weboptions('UserAgent', 'http://www.whoishostingthis.com/tools/user-agent/')
``````


== See also

#nlink(<webtools:webread>)[webread];, #nlink(<webtools:websave>)[websave];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.6.0], ['FollowLocation' option added],
  [2.0.0], [weboptions is a classdef value class],
)

// Author: Allan CORNET
