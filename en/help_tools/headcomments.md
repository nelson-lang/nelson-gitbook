

# headcomments

Display Nelson function header comments.

## Syntax

- headcomments(function_name)
- ce = headcomments(function_name)

## Input argument

 - function_name - a string: function name or a .nlf filename.

## Output argument

 - ce - a cell of strings

## Description


  <p><b>head_comments</b> displays the function header comments.</p>
  <p>Comments are read from the associated .nlf file.</p>
  <p>Nelson predefined functions have no header comments.</p>


## Example

```matlab
comments = headcomments('cellstr'); md = markdown(comments);inserthtml(md)
```
<img src="headcomments_CC42D5D9.png" align="middle"/>

## See also

[doc](../help_browser/doc.md), [markdown](markdown.md), [inserthtml](../gui/inserthtml.md), [which](which.html).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



