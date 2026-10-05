#import "nelson_help.typ": *

= ferror <stream_manager:ferror>

Test des erreurs d'E\/S lecture\/écriture.

== Syntaxe

- #raw("msg = ferror(fid)");
- #raw("[msg, code] = ferror(fid)");
- #raw("ferror(fid, 'clear')");

== Argument d'entrée

/ fid: un descripteur de fichier

== Argument de sortie

/ code: une valeur entière : 0 s'il n'y a pas d'erreur. valeur négative si une erreur est détectée.
/ msg: un vecteur de caractères : message d'erreur correspondant au code.

== Description

#strong[ferror]; interroge le statut d'erreur d'un fichier.

 #strong[ferror(fid, 'clear')]; efface l'indicateur d'erreur pour le fichier spécifié.

 Pour plus d'informations sur le message retourné, consultez le manuel de la bibliothèque d'exécution C.


== Exemple

``````matlab
filename = [tempdir(), 'test_ferror.csv'];
fid = fopen(filename, 'w');
res = fgets(fid);
[msg, code] = ferror(fid)

``````


== Voir aussi

#nlink(<stream_manager:fopen>)[fopen];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
