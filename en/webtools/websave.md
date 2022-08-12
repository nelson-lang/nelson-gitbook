# websave

Save data from RESTful web service to file

## Syntax

- result_filename = websave(filename, url)
- result_filename = websave(filename, url, name1, value1, ... , nameN, valueN)
- result_filename = websave(filename, url, name1, value1, ... , nameN, valueN, options)

## Input argument

- filename - a string: name of file to save content to.
- url - a string: URL to a web service.
- name1, value1, ... , nameN, valueN - Name-Value Pair Arguments.
- options - a weboptions object.

## Output argument

- result_filename - a string: full filename path.

## Description

  <p><b>websave()</b> saves content from the web to filename.</p>
  <p>websave function returns the full filename path as result_filename.</p>

## Example

```matlab
url ='https://httpbin.org/get';
filename = [tempdir(), 'test.txt'];
destination_filename = websave(filename, url, weboptions('ContentType','json'));
txt = fileread(filename)
```

## See also

[weboptions](weboptions.md), [webread](webread.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
