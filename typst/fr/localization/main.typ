#import "nelson_help.typ": *

= Fonctions de localisation

Le module de localisation gère les paramètres de langue et l'internationalisation dans Nelson.

 Il fournit des mécanismes pour interroger les langues disponibles, déterminer la langue actuelle et par défaut, et changer dynamiquement la langue de l'interface.

 Ce module garantit que Nelson peut être adapté à différentes préférences linguistiques et régionales, en prenant en charge une expérience utilisateur multilingue.

== Functions

- #nlink(<localization:getavailablelanguages>)[getavailablelanguages]: Renvoie les langues disponibles dans Nelson.
- #nlink(<localization:getdefaultlanguage>)[getdefaultlanguage]: Renvoie la langue par défaut utilisée dans Nelson.
- #nlink(<localization:getlanguage>)[getlanguage]: Renvoie la langue courante dans Nelson.
- #nlink(<localization:setlanguage>)[setlanguage]: Modifie la langue utilisée dans Nelson.


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
