# weboptions

Specify parameters for RESTful web service

## 📝 Syntax

- options = weboptions()
- options = weboptions(name, value)

## 📥 Input argument

- name - a string.
- value - a variable: value corresponding to name field.

## 📤 Output argument

- options - a weboptions object.

## 📄 Description

<b>options = weboptions()</b> returns default weboptions object.

weboptions object can be an optional input argument to the webread, websave, and webwrite builtin.

Name-Value Pair Arguments:

<b>UserAgent</b> User agent identification: a string or character vector.

<b>Timeout</b> Time out connection duration: positive numeric scalar or Inf value.

<b>Username</b> User identifier: a string or character vector.

<b>Password</b> User authentication password: a string or character vector.

<b>KeyName</b> Name of key: a string or character vector.

<b>KeyValue</b> Value of key: a string scalar, character vector, numeric or logical.

<b>HeaderFields</b> Names and values of header fields: m-by-2 array of strings or cell array of character vectors

<b>ContentType</b> Content type: a string scalar or character vector.

supported value: 'auto', 'text', 'audio', 'binary', 'json', 'raw'

<b>ContentReader</b> Content reader: an function handle.

<b>MediaType</b> Media type: a string or character vector.

supported value: 'auto', 'application/x-www-form-urlencoded'

<b>RequestMethod</b> HTTP request method: a string or character vector.

supported value: 'auto', 'get', 'post', 'put', 'delete', 'patch'

<b>ArrayFormat</b>: 'csv' (default), 'json', 'repeating' or 'php'

<b>CertificateFilename</b> Filename of root certificates: a string or character vector.

<b>FollowLocation</b> tells the library to follow any Location: header redirect that an HTTP server sends in a 30x response: a logical, false by default.

## 💡 Example

```matlab
weboptions()
options = weboptions('UserAgent', 'http://www.whoishostingthis.com/tools/user-agent/')
```

## 🔗 See also

[webread](../webtools/webread.md), [websave](../webtools/websave.md).

## 🕔 History

| Version | 📄 Description                |
| ------- | ----------------------------- |
| 1.0.0   | initial version               |
| 1.6.0   | 'FollowLocation' option added |

## 👤 Author

Allan CORNET
