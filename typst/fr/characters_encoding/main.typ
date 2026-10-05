#import "nelson_help.typ": *

= Encodage des caracteres

Le module d'encodage des caracteres fournit des outils pour convertir entre les representations d'octets natives et les caracteres Unicode.

 Il permet aux scripts de lire et manipuler du texte dans plusieurs encodages, sur differentes plateformes et locales.

 Le module inclut aussi la detection des jeux de caracteres compatibles avec une entree donnee.

== Functions

- #nlink(<characters_encoding:native2unicode>)[native2unicode]: Convertit la représentation d'octets en caractères unicode
- #nlink(<characters_encoding:nativecharset>)[nativecharset]: Trouve tous les jeux de caractères qui semblent cohérents avec l'entrée
- #nlink(<characters_encoding:unicode2native>)[unicode2native]: Convertit la représentation de caractères unicode en octets


#nested[
#pagebreak(weak: true)
#include "native2unicode.typ"
#pagebreak(weak: true)
#include "nativecharset.typ"
#pagebreak(weak: true)
#include "unicode2native.typ"
]
