



headcomments


headcomments

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

```Nelson
comments = headcomments('getfield'); md = markdown(comments);inserthtml(md)
```
<img src="headcomments_E9DF6806.png" align="middle"/>

## See also

doc.md doc, markdown.md markdown, inserthtml.md inserthtml, which.html which.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



