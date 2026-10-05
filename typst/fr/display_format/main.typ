#import "nelson_help.typ": *

= Format d'affichage

Le module Format d'affichage définit la manière dont les valeurs, variables et expressions sont présentées dans Nelson.

 Il offre un contrôle sur le formatage numérique, la représentation du texte et la façon dont les résultats sont affichés dans la console.

 Le module fournit également des mécanismes pour capturer la sortie formatée de manière programmatique, permettant à la fois un affichage lisible par l'humain et un traitement programmatique des résultats.

 Cela garantit une grande flexibilité dans la présentation et la réutilisation des informations au sein de scripts et d'applications.

== Functions

- #nlink(<display_format:DisplayFormatOptions>)[nelson.display.DisplayFormatOptions]: Objet d'options de format d'affichage.
- #nlink(<display_format:disp>)[disp]: Afficher une variable.
- #nlink(<display_format:display>)[display]: Afficher des informations sur une variable ou le résultat d'une expression.
- #nlink(<display_format:echo>)[echo]: Contrôle l'écho lors de l'exécution des scripts.
- #nlink(<display_format:format>)[format]: Format d'affichage et impression des nombres.
- #nlink(<display_format:formattedDisplayText>)[formattedDisplayText]: Capturer la sortie d'affichage en tant que chaîne.


#nested[
#pagebreak(weak: true)
#include "DisplayFormatOptions.typ"
#pagebreak(weak: true)
#include "disp.typ"
#pagebreak(weak: true)
#include "display.typ"
#pagebreak(weak: true)
#include "echo.typ"
#pagebreak(weak: true)
#include "format.typ"
#pagebreak(weak: true)
#include "formattedDisplayText.typ"
]
