#import "nelson_help.typ": *

= checkupdate <webtools:checkupdate>

Check update for Nelson's application

== Syntax

- #raw("checkupdate()");
- #raw("checkupdate('url', http_url_to_check)");
- #raw("checkupdate('forcenogui', true_or_false)");
- #raw("checkupdate('url', http_url_to_check, 'forcenogui', true_or_false)");
- #raw("checkupdate('forcenogui', true_or_false)");
- #raw("[res, msg, url_new_version] = checkupdate(...)");

== Input argument

/ http\_url\_to\_check: a string: URL to check the latest Nelson's application version.
/ true\_or\_false: a logical: true (force CLI), false (detect default mode).

== Output argument

/ res: a logical: result of the update check.
/ msg: a string: message providing information about the update check.
/ url\_new\_version: a string: URL to download the new version if available.

== Description

#strong[checkupdate]; checks if a new version of Nelson is available and opens a URL to download it.

 This function is primarily used through the menu action available in the main window's help section.


== Example

``````matlab
checkupdate
``````


== See also

#nlink(<webtools:webread>)[webread];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.2.0], [Initial version],
)

// Author: Allan CORNET
