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

<p>
            options = weboptions() returns default weboptions object.</p>

<p>weboptions object can be an optional input argument to the webread, websave, and webwrite
            builtin.</p>

<p>Name-Value Pair Arguments:</p>

<p>
            UserAgent User agent identification: a string or character vector.</p>

<p>
            Timeout Time out connection duration: positive numeric scalar or Inf value.</p>

<p>
            Username User identifier: a string or character vector.</p>

<p>
            Password User authentication password: a string or character vector.</p>

<p>
            KeyName Name of key: a string or character vector.</p>

<p>
            KeyValue Value of key: a string scalar, character vector, numeric or logical.</p>

<p>
            HeaderFields Names and values of header fields: m-by-2 array of strings or cell
            array of character vectors</p>

<p>
            ContentType Content type: a string scalar or character vector.</p>

<p>supported value: 'auto', 'text', 'audio', 'binary', 'json', 'raw'</p>

<p>
            ContentReader Content reader: an function handle.</p>

<p>
            MediaType Media type: a string or character vector.</p>

<p>supported value: 'auto', 'application/x-www-form-urlencoded'</p>

<p>
            RequestMethod HTTP request method: a string or character vector.</p>

<p>supported value: 'auto', 'get', 'post', 'put', 'delete', 'patch'</p>

<p>
            ArrayFormat: 'csv' (default), 'json', 'repeating' or 'php'</p>

<p>
            CertificateFilename Filename of root certificates: a string or character vector.</p>

<p>
            FollowLocation tells the library to follow any Location: header redirect that an
            HTTP server sends in a 30x response: a logical, false by default.</p>

## Example

```matlab
weboptions()
options = weboptions('UserAgent', 'http://www.whoishostingthis.com/tools/user-agent/')
```

## See also

[webread](../webtools/webread.md), [websave](../webtools/websave.md).

## History

| Version | Description                   |
| ------- | ----------------------------- |
| 1.0.0   | initial version               |
| 1.6.0   | 'FollowLocation' option added |

## Author

Allan CORNET
