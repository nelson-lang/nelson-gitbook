#import "nelson_help.typ": *

= Traitement XML

Le module XML fournit des fonctions pour créer, convertir et gérer des documents XML pour Nelson.

== Functions

- #nlink(<xml:readstruct>)[readstruct]: Lire des données XML comme structure
- #nlink(<xml:writestruct>)[writestruct]: Écrire une structure comme XML
- #nlink(<xml:xmlchecker>)[xmlchecker]: Vérifie un fichier XML par rapport à un XSD.
- #nlink(<xml:xmlprettyprint>)[xmlprettyprint]: formate un fichier XML.
- #nlink(<xml:xmlread>)[xmlread]: Lire un fichier XML comme objet document
- #nlink(<xml:xmltransform>)[xmltransform]: Transformation XML utilisant XSLT
- #nlink(<xml:xmlwrite>)[xmlwrite]: Sérialiser un objet document XML
- #nlink(<xml:xslt>)[xslt]: Transformer du XML avec XSLT


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
