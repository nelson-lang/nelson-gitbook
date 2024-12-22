# weboptions

Specify parameters for RESTful web service

## Syntax

- options = weboptions()
- options = weboptions(name, value)

## Input argument

- name - a string.
- value - a variable: value corresponding to name field.

## Output argument

- options - a weboptions object.

## Description

  <p><b>options = weboptions()</b> returns default weboptions object.</p>
  <p>weboptions object can be an optional input argument to the webread, websave, and webwrite builtin.</p>
  <p>Name-Value Pair Arguments:</p>
  <p><b>UserAgent</b> User agent identification: a string or character vector.</p>
  <p><b>Timeout</b> Time out connection duration: positive numeric scalar or Inf value.</p>
  <p><b>Username</b> User identifier: a string or character vector.</p>
  <p><b>Password</b> User authentication password: a string or character vector.</p>
  <p><b>KeyName</b> Name of key: a string or character vector.</p>
  <p><b>KeyValue</b> Value of key: a string scalar, character vector, numeric or logical.</p>
  <p><b>HeaderFields</b> Names and values of header fields: m-by-2 array of strings or cell array of character vectors</p>
  <p><b>ContentType</b> Content type: a string scalar or character vector.</p>
  <p>supported value: 'auto', 'text', 'audio', 'binary', 'json', 'raw'</p>
  <p><b>ContentReader</b> Content reader: an function handle.</p>
  <p><b>MediaType</b> Media type: a string or character vector.</p>
  <p>supported value: 'auto', 'application/x-www-form-urlencoded'</p>
  <p><b>RequestMethod</b> HTTP request method: a string or character vector.</p>
  <p>supported value: 'auto', 'get', 'post', 'put', 'delete', 'patch'</p>
  <p><b>ArrayFormat</b>: 'csv' (default), 'json', 'repeating' or 'php'</p>
  <p><b>CertificateFilename</b> Filename of root certificates: a string or character vector.</p>
  <p><b>FollowLocation</b> tells the library to follow any Location: header redirect that an HTTP server sends in a 30x response: a logical, false by default.</p>

## Example

```matlab
weboptions()
options = weboptions('UserAgent', 'http://www.whoishostingthis.com/tools/user-agent/')
```

## See also

[webread](webread.md), [websave](websave.md).

## History

| Version | Description                   |
| ------- | ----------------------------- |
| 1.0.0   | initial version               |
| 1.6.0   | 'FollowLocation' option added |

## Author

Allan CORNET
