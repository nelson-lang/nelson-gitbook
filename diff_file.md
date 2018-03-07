



diff_file


diff_file

diff two files or strings.

## Syntax

- res = diff(filename_1, filename_2, with_eol)

## Input argument

 - filename_1 - a string: a filename.
 - filename_2 - a string: a filename.
 - with_eol - a logical: with end of line considered or not (true by default).

## Output argument

 - res - a string: '' if no diff detected.
 - msg - a string: error message

## Description


  <p><b>diff_file</b> compares two files and returns diff as unified format.</p>
  <p>if compared files are equals, res is an empty string.</p>


## Example

```Nelson
res = diff_file([nelsonroot(), '/etc/startup.nls'], [nelsonroot(), '/etc/startup.nls'])
res = diff_file([nelsonroot(), '/etc/startup.nls'], [nelsonroot(), '/etc/finish.nls'])
```

## See also

isdir.md isdir, isfile.md isfile.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



