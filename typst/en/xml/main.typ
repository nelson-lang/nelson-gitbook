#import "nelson_help.typ": *

= Xml Processing

The XML module provides functions to create, convert, and manage XML documents for Nelson.

== Functions

- #nlink(<xml:readstruct>)[readstruct]: Read XML data as a structure
- #nlink(<xml:writestruct>)[writestruct]: Write a structure as XML
- #nlink(<xml:xmlchecker>)[xmlchecker]: Checks a xmlfile against xsd.
- #nlink(<xml:xmlprettyprint>)[xmlprettyprint]: format an XML file.
- #nlink(<xml:xmlread>)[xmlread]: Read an XML file as a document object
- #nlink(<xml:xmltransform>)[xmltransform]: XML transformation using XSLT
- #nlink(<xml:xmlwrite>)[xmlwrite]: Serialize an XML document object
- #nlink(<xml:xslt>)[xslt]: Transform XML using XSLT


#nested[
#pagebreak(weak: true)
#include "readstruct.typ"
#pagebreak(weak: true)
#include "writestruct.typ"
#pagebreak(weak: true)
#include "xmlchecker.typ"
#pagebreak(weak: true)
#include "xmlprettyprint.typ"
#pagebreak(weak: true)
#include "xmlread.typ"
#pagebreak(weak: true)
#include "xmltransform.typ"
#pagebreak(weak: true)
#include "xmlwrite.typ"
#pagebreak(weak: true)
#include "xslt.typ"
]
