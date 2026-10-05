#import "nelson_help.typ": *

= nelson-format <interpreter:nelson_format>

Formateur de source Nelson en ligne de commande.

== Syntaxe

- #raw("nelson-format [--include-subfolders true|false] [--indent-size n] [--full-format true|false] [--config file] [--check] path ...");

== Description

#strong[nelson-format]; formate les fichiers source Nelson depuis la ligne de commande.

 Les fichiers sont formates sur place par defaut. Le formateur traite uniquement les fichiers avec l'extension #strong[.m];.

 #strong[--include-subfolders]; active le formatage recursif quand un dossier est passe en entree.

 #strong[--indent-size]; definit la taille d'indentation. La valeur par defaut est #strong[2];.

 #strong[--full-format]; active ou desactive le formatage complet. La valeur par defaut est #strong[true];. Mettre #strong[false]; pour modifier uniquement l'indentation de debut de ligne.

 #strong[--config]; charge un fichier de configuration JSON. Sans cette option, #strong[nelson-format]; cherche #strong[nelson-format.json]; depuis les chemins d'entree puis depuis le dossier courant.

 #strong[--check]; signale les fichiers qui changeraient sans les ecrire.

 Les blocs sur une seule ligne conservent leurs instructions d'ouverture et de fermeture sans modifier l'indentation des lignes suivantes. Les indexations utilisant #strong[end]; restent distinctes des fermetures de blocs.

 Les clauses catch sur une ligne conservent le separateur apres la variable d'exception facultative, notamment dans #strong[catch err, value \= err.message;];.

 Les cles de configuration supportees sont #strong[indentSize];, #strong[fullFormat];, #strong[includeSubfolders]; et #strong[excludePathContains];. Les options de ligne de commande remplacent les valeurs chargees depuis JSON.

 Les fichiers listes par #strong[nelson-format-ignore.json]; ou par #strong[excludePathContains]; dans #strong[nelson-format.json]; sont ignores.

 Le code retour #strong[0]; signifie succes ou aucun changement requis, #strong[1]; signifie que #strong[--check]; a trouve des fichiers qui changeraient, et #strong[2]; signifie une erreur d'usage, d'entree, de lecture\/ecriture ou interne.

 Le formatage complet preserve les references aux packages, aux membres et aux champs dynamiques comme #strong[package.function(value.(name))];. Les noms contextuels des blocs de classe restent des identifiants ordinaires dans les instructions executables.


== Fonction(s) utilisée(s)

smartindent

== Exemples

Formatter recursivement tous les fichiers Nelson d'un dossier.

``````matlab
nelson-format --include-subfolders true modules/interpreter/functions
``````

Verifier qu'un fichier est deja formate.

``````matlab
nelson-format --check myfile.m
``````

Formatter avec un fichier de configuration explicite.

``````matlab
nelson-format --config nelson-format.json modules/interpreter/functions
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
