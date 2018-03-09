

# cd

Changes Nelson current directory.

## Syntax

- cd(dirname)
- cd dirname
- previous_path = cd(dirname)
- cd ..
- cd

## Input argument

 - dirname - a string: directory name to move.

## Output argument

 - previous_path - a string: previous directory.

## Description


  <p>Changes the current working directory to dirname.</p>
  <p><b>a = cd()</b> without input argument returns the current working directory.</p>
  <p><b>cd()</b> without input argument displays the current working directory.</p>
  <p/>


## Example

```Nelson
previous = cd(tempdir())
cd
cd ..
```

## See also

[mkdir](mkdir.md), [pwd](pwd.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



