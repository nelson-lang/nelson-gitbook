#import "nelson_help.typ": *

= Localization functions

The Localization module manages language settings and internationalization in Nelson.

 It provides mechanisms to query available languages, determine the current and default language, and change the interface language dynamically.

 This module adapts Nelson to linguistic and regional settings and supports multilingual interfaces.

== Functions

- #nlink(<localization:getavailablelanguages>)[getavailablelanguages]: Returns available languages in Nelson.
- #nlink(<localization:getdefaultlanguage>)[getdefaultlanguage]: Returns the default language used in Nelson.
- #nlink(<localization:getlanguage>)[getlanguage]: Returns the current language in Nelson.
- #nlink(<localization:setlanguage>)[setlanguage]: Changes the language used in Nelson.


#nested[
#pagebreak(weak: true)
#include "getavailablelanguages.typ"
#pagebreak(weak: true)
#include "getdefaultlanguage.typ"
#pagebreak(weak: true)
#include "getlanguage.typ"
#pagebreak(weak: true)
#include "setlanguage.typ"
]
