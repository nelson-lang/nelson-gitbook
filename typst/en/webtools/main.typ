#import "nelson_help.typ": *

= Web tools

The WebTools module provides functions to interact with web resources, transfer data via URLs, and work with RESTful web services.

== Functions

- #nlink(<webtools:checkupdate>)[checkupdate]: Check update for Nelson's application
- #nlink(<webtools:repo>)[repo]: Git repository tool for Nelson
- #nlink(<webtools:urlencode>)[urlencode]: Replace special characters in URLs with escape characters.
- #nlink(<webtools:weboptions>)[weboptions]: Specify parameters for RESTful web service
- #nlink(<webtools:webread>)[webread]: Read data from RESTful web service to Nelson's variable
- #nlink(<webtools:websave>)[websave]: Save data from RESTful web service to file
- #nlink(<webtools:webwrite>)[webwrite]: Write data to RESTful web service


#nested[
#pagebreak(weak: true)
#include "checkupdate.typ"
#pagebreak(weak: true)
#include "repo.typ"
#pagebreak(weak: true)
#include "urlencode.typ"
#pagebreak(weak: true)
#include "weboptions.typ"
#pagebreak(weak: true)
#include "webread.typ"
#pagebreak(weak: true)
#include "websave.typ"
#pagebreak(weak: true)
#include "webwrite.typ"
]
