#import "nelson_help.typ": *

= I18n functions

The i18n module provides tools for internationalization and localization of text within Nelson.

 It retrieves translated strings for the current locale, provides utilities for translation workflows, and generates translation file headers.

 This module helps developers create software that can adapt dynamically to multiple languages and cultural contexts.

== Functions

- #nlink(<i18n:gettext>)[gettext]: Get text translated into the current locale.
- #nlink(<i18n:gettext>)[\_]: Get text translated into the current locale.
- #nlink(<i18n:i18nHelpers>)[i18nHelpers]: Internationalization (i18n) utility functions
- #nlink(<i18n:poheader>)[poheader]: Generates po file header.


#nested[
#pagebreak(weak: true)
#include "gettext.typ"
#pagebreak(weak: true)
#include "i18nHelpers.typ"
#pagebreak(weak: true)
#include "poheader.typ"
]
