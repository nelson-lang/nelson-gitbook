#import "nelson_help.typ": *

= Fonctions I18n

Le module i18n fournit des outils pour l'internationalisation et la localisation du texte dans Nelson.

 Il obtient les chaînes traduites pour la locale courante, fournit des utilitaires pour les flux de travail de traduction et génère des en-têtes de fichiers de traduction.

 Ce module aide les développeurs à créer des logiciels pouvant s'adapter dynamiquement à plusieurs langues et contextes culturels.

== Functions

- #nlink(<i18n:gettext>)[gettext]: Obtient le texte traduit pour la locale courante.
- #nlink(<i18n:gettext>)[\_]: Obtient le texte traduit pour la locale courante.
- #nlink(<i18n:i18nHelpers>)[i18nHelpers]: Fonctions utilitaires d'internationalisation (i18n)
- #nlink(<i18n:poheader>)[poheader]: Génère l'en-tête d'un fichier PO.


#nested[
#pagebreak(weak: true)
#include "gettext.typ"
#pagebreak(weak: true)
#include "i18nHelpers.typ"
#pagebreak(weak: true)
#include "poheader.typ"
]
