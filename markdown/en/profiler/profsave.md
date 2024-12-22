# profsave

Save profile result to HTML format.

## Syntax

- profsave
- profsave(profile_info)
- profsave(profile_info, dirname)

## Input argument

- profile_info - a struct: result of profile('info')
- dirname - a string: output directory destination.

## Description

  <p><b>profsave</b> exports the profiling data into a series of HTML files.</p>
  <p>The input profile_info is the structure returned by profile('info').</p>
  <p>If unspecified, <b>profsave</b> will use the current profile.</p>

## Example

```matlab
profile on
sind(5)
profile off
profsave(profile('info'), [tempdir(), 'profile_results'])
unix([tempdir(), 'profile_results/index.html'])
```

## See also

[profile](profile.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
