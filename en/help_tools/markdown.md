

# markdown

Converts markdown to html.

## Syntax

- html_txt = markdown(md_txt)
- status = markdown(md_filename, html_filename)

## Input argument

 - md_txt - a string: markdown text to convert.
 - md_filename - a string: markdown filename to convert (source).
 - html_filename - a string: html filename (destination).

## Output argument

 - status - a logical: html file generated or not.

## Description


  <p><b>markdown</b> converts Markdown text-to-HTML.</p>


## Example

```matlab
txt = {'## Example of Markdown text';
'>Nelson supports markdown ...'};
html = markdown(txt);
filewrite([tempdir(), '/markdown_example.html'], html)

if ispc()
  winopen([tempdir(), '/markdown_example.html']);
end
```

## See also

[htmltopdf](htmltopdf.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



