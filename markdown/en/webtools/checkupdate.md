# checkupdate

Check update for Nelson's application

## Syntax

- checkupdate()
- checkupdate('url', http_url_to_check)
- checkupdate('forcenogui', true_or_false)
- checkupdate('url', http_url_to_check, 'forcenogui', true_or_false)
- checkupdate('forcenogui', true_or_false)
- [res, msg, url_new_version] = checkupdate(...)

## Input argument

- http_url_to_check - a string: URL to check the latest Nelson's application version.
- true_or_false - a logical: true (force CLI), false (detect default mode).

## Output argument

- res - a logical: result of the update check.
- msg - a string: message providing information about the update check.
- url_new_version - a string: URL to download the new version if available.

## Description

<p>
            checkupdate checks if a new version of Nelson is available and opens a URL to download it.</p>

<p>This function is primarily used through the menu action available in the main window's help section.</p>

## Example

```matlab
checkupdate
```

## See also

[webread](../webtools/webread.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.2.0   | Initial version |

## Author

Allan CORNET
