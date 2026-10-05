#import "nelson_help.typ": *

= Dictionnaires

Le module Dictionnaire fournit des outils pour travailler avec des paires clé-valeur dans Nelson.

 Il permet la création et la configuration de dictionnaires avec des types définis pour les clés et les valeurs, la consultation et la modification des entrées, ainsi que la gestion de la structure globale.

 Ce module permet un stockage, une récupération et une manipulation efficaces des données indexées par des clés uniques, ce qui le rend adapté aux tableaux associatifs, recherches et gestion dynamique des données.

 Les variables dictionnaire peuvent etre conservees dans des fichiers MAT et NH5, et les dictionnaires peuvent etre echanges comme fichiers JSON avec readdictionary et writedictionary.

== Functions

- #nlink(<dictionary:configureDictionary>)[configureDictionary]: Génère un dictionnaire avec des types définis pour les clés et les valeurs.
- #nlink(<dictionary:containers_Map>)[containers.Map]: Objet qui associe des cles uniques a des valeurs.
- #nlink(<dictionary:dictionary>)[dictionary]: Objet qui associe des clés uniques à des valeurs.
- #nlink(<dictionary:disp>)[disp]: Affiche un dictionnaire.
- #nlink(<dictionary:entries>)[entries]: Paires clé-valeur du dictionnaire.
- #nlink(<dictionary:insert>)[insert]: Ajouter des entrées à un dictionnaire.
- #nlink(<dictionary:isConfigured>)[isConfigured]: Vérifie si le dictionnaire a des types assignés aux clés et aux valeurs.
- #nlink(<dictionary:isKey>)[isKey]: Vérifie si le dictionnaire contient la clé
- #nlink(<dictionary:isequal>)[isequal]: Determine si des dictionnaires sont egaux.
- #nlink(<dictionary:keyHash>)[keyHash]: Créer un code de hachage pour une clé de dictionnaire.
- #nlink(<dictionary:keyMatch>)[keyMatch]: Vérifie si deux clés de dictionnaire sont identiques.
- #nlink(<dictionary:keys>)[keys]: Clés du dictionnaire.
- #nlink(<dictionary:lookup>)[lookup]: Trouver la valeur dans le dictionnaire par clé.
- #nlink(<dictionary:numEntries>)[numEntries]: Nombre de paires clé-valeur dans le dictionnaire.
- #nlink(<dictionary:readdictionary>)[readdictionary]: Lit un dictionnaire depuis un fichier.
- #nlink(<dictionary:remove>)[remove]: Supprimer des entrées du dictionnaire.
- #nlink(<dictionary:types>)[types]: Types des clés et valeurs du dictionnaire.
- #nlink(<dictionary:values>)[values]: Valeurs du dictionnaire.
- #nlink(<dictionary:writedictionary>)[writedictionary]: Ecrit un dictionnaire dans un fichier.


#nested[
#pagebreak(weak: true)
#include "configureDictionary.typ"
#pagebreak(weak: true)
#include "containers_Map.typ"
#pagebreak(weak: true)
#include "dictionary.typ"
#pagebreak(weak: true)
#include "disp.typ"
#pagebreak(weak: true)
#include "entries.typ"
#pagebreak(weak: true)
#include "insert.typ"
#pagebreak(weak: true)
#include "isConfigured.typ"
#pagebreak(weak: true)
#include "isKey.typ"
#pagebreak(weak: true)
#include "isequal.typ"
#pagebreak(weak: true)
#include "keyHash.typ"
#pagebreak(weak: true)
#include "keyMatch.typ"
#pagebreak(weak: true)
#include "keys.typ"
#pagebreak(weak: true)
#include "lookup.typ"
#pagebreak(weak: true)
#include "numEntries.typ"
#pagebreak(weak: true)
#include "readdictionary.typ"
#pagebreak(weak: true)
#include "remove.typ"
#pagebreak(weak: true)
#include "types.typ"
#pagebreak(weak: true)
#include "values.typ"
#pagebreak(weak: true)
#include "writedictionary.typ"
]
