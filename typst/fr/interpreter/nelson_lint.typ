#import "nelson_help.typ": *

= nelson-lint <interpreter:nelson_lint>

Analyseur de code Nelson en ligne de commande.

== Syntaxe

- #raw("nelson-lint [--format text|json|sarif] [--config file] path ...");
- #raw("nelson-lint [--include-subfolders true|false] [--fail-on error|warning|info|none] path ...");
- #raw("nelson-lint [--stdin] [--stdin-filename name] [--fix|--fix-dry-run|--diff] path ...");

== Description

#strong[nelson-lint]; analyse les fichiers et dossiers source Nelson depuis la ligne de commande.

 #strong[--format]; selectionne une sortie texte, JSON ou SARIF.

 #strong[--config]; charge un fichier de configuration JSON version 2.

 #strong[--include-subfolders]; active l'analyse recursive des dossiers.

 #strong[--fail-on]; selectionne la severite minimale qui produit le code retour #strong[1];. #strong[--deny warnings]; reste un alias de #strong[--fail-on warning];.

 #strong[--stdin]; analyse le texte source depuis l'entree standard. Utiliser #strong[--stdin-filename]; pour choisir le nom de fichier des diagnostics.

 #strong[--quiet]; supprime la sortie standard, et #strong[--output]; ecrit les diagnostics dans un fichier.

 #strong[--fix]; applique les edits de texte surs et non superposes portes par les diagnostics, puis analyse de nouveau les fichiers avant de signaler les diagnostics restants. Les corrections sures incluent le nettoyage des espaces et les autres corrections de l'analyseur dont les plages sont exactes.

 #strong[--fix-dry-run]; et #strong[--diff]; affichent les edits surs sans modifier les fichiers.

 Le code retour #strong[0]; signifie qu'aucun diagnostic ne reste, #strong[1]; signifie que des diagnostics restent, et #strong[2]; signifie une erreur d'usage, d'entree ou interne.


== Fonction(s) utilisée(s)

codeAnalyzerRules

== Exemple

Lancer l'analyse recursive avec correction activee.

``````matlab
nelson-lint --include-subfolders true --fix --config nelson-lint.json modules/interpreter/functions
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
