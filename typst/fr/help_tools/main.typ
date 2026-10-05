#import "nelson_help.typ": *

= Documentation et gestion de l'aide

Le module Help Tools fournit des fonctions pour créer, convertir et gérer la documentation pour Nelson.

 Il prend en charge la génération de contenu d'aide dans plusieurs formats, y compris HTML, Markdown, PDF et formats prêts pour le web, permettant aux développeurs de maintenir et de distribuer efficacement une documentation complète.

== Functions

- #nlink(<help_tools:1_nelson_help_reference>)[Aide Nelson]: Comment rédiger des fichiers XML d'aide pour Nelson (éléments, attributs, exemples, conseils).
- #nlink(<help_tools:buildhelp>)[buildhelp]: Génère l'aide des modules de Nelson.
- #nlink(<help_tools:buildhelpjson>)[buildhelpjson]: Construire l'aide de Nelson au format JSON.
- #nlink(<help_tools:buildhelpmd>)[buildhelpmd]: Génère l'aide des modules de Nelson pour GitBook.
- #nlink(<help_tools:buildhelptypst>)[buildhelptypst]: Génère l'aide des modules de Nelson en sources Typst.
- #nlink(<help_tools:buildhelpweb>)[buildhelpweb]: Génère l'aide des modules de Nelson pour un site web.
- #nlink(<help_tools:deployhelp>)[deployhelp]: Installer, désinstaller et gérer le système d'aide local de Nelson et les fichiers d'aide des modules.
- #nlink(<help_tools:doc>)[doc]: Affiche la documentation.
- #nlink(<help_tools:docroot>)[docroot]: Récupère ou met à jour le répertoire racine du système d'aide de Nelson.
- #nlink(<help_tools:headcomments>)[headcomments]: Affiche les commentaires d'en-tête d'une fonction Nelson.
- #nlink(<help_tools:help>)[help]: Aide pour les fonctions dans la fenêtre de commande.
- #nlink(<help_tools:htmltopdf>)[htmltopdf]: Convertit une page HTML en PDF.
- #nlink(<help_tools:markdown>)[markdown]: Convertit le Markdown en HTML.
- #nlink(<help_tools:markdowndisp>)[markdowndisp]: Affiche du texte Markdown rendu.
- #nlink(<help_tools:xmldocbuild>)[xmldocbuild]: Fonction interne pour convertir des fichiers XML en HTML.
- #nlink(<help_tools:xmldocchecker>)[xmldocchecker]: Vérifie un fichier de documentation XML.
- #nlink(<help_tools:xmldoclinkchecker>)[xmldoclinkchecker]: Vérifie les références croisées non résolues dans les fichiers d'aide XML de Nelson.
- #nlink(<help_tools:xmldocrenderimages>)[xmldocrenderimages]: Génère les images d'exemple des fichiers d'aide de Nelson.
- #nlink(<help_tools:xmldoctohtml>)[xmldoctohtml]: Convertit des fichiers d'aide XML Nelson en HTML.
- #nlink(<help_tools:xmldoctomd>)[xmldoctomd]: Convertit des fichiers d'aide XML Nelson au format Markdown.
- #nlink(<help_tools:xmldoctotypst>)[xmldoctotypst]: Convertit des fichiers d'aide XML Nelson en sources Typst.


#nested[
#pagebreak(weak: true)
#include "1_nelson_help_reference.typ"
#pagebreak(weak: true)
#include "buildhelp.typ"
#pagebreak(weak: true)
#include "buildhelpjson.typ"
#pagebreak(weak: true)
#include "buildhelpmd.typ"
#pagebreak(weak: true)
#include "buildhelptypst.typ"
#pagebreak(weak: true)
#include "buildhelpweb.typ"
#pagebreak(weak: true)
#include "deployhelp.typ"
#pagebreak(weak: true)
#include "doc.typ"
#pagebreak(weak: true)
#include "docroot.typ"
#pagebreak(weak: true)
#include "headcomments.typ"
#pagebreak(weak: true)
#include "help.typ"
#pagebreak(weak: true)
#include "htmltopdf.typ"
#pagebreak(weak: true)
#include "markdown.typ"
#pagebreak(weak: true)
#include "markdowndisp.typ"
#pagebreak(weak: true)
#include "xmldocbuild.typ"
#pagebreak(weak: true)
#include "xmldocchecker.typ"
#pagebreak(weak: true)
#include "xmldoclinkchecker.typ"
#pagebreak(weak: true)
#include "xmldocrenderimages.typ"
#pagebreak(weak: true)
#include "xmldoctohtml.typ"
#pagebreak(weak: true)
#include "xmldoctomd.typ"
#pagebreak(weak: true)
#include "xmldoctotypst.typ"
]
