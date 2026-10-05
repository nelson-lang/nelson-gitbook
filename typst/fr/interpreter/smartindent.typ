#import "nelson_help.typ": *

= smartindent <interpreter:smartindent>

Formatage et indentation d'un fichier Nelson

== Syntaxe

- #raw("smartindent(filename)");
- #raw("smartindent(filename, indentsize)");
- #raw("smartindent(filename, indentsize, dobackup)");
- #raw("smartindent(filename, indentsize, dobackup, fullformat)");

== Argument d'entrée

/ filename: une chaine : nom du fichier a formater.
/ indentsize: un entier \> 0. par defaut : 2
/ dobackup: un booleen : false par defaut. Si true, cree un fichier .bak.
/ fullformat: un booleen : true par defaut. Si false, seule l'indentation de debut de ligne est modifiee.

== Description

#strong[smartindent]; valide, formate et indente le code Nelson sans l'executer. Par defaut, il normalise l'indentation, les espaces autour des operateurs courants, les separateurs et les blocs classdef. Mettre #strong[fullformat]; a false pour modifier uniquement l'indentation de debut de ligne.

 Le formatage complet conserve les points accoles aux noms de packages, aux membres des objets et aux champs des structures, y compris les champs dynamiques comme #strong[value.(name)];. Les operateurs element par element conservent leur espacement d'operateur.

 Les noms de blocs de classe comme #strong[properties]; et #strong[methods]; restent des identifiants ordinaires dans les instructions executables. Ils ouvrent des blocs d'indentation uniquement dans le corps de la classe.

 Les marqueurs de commentaire de bloc dans les tableaux de caracteres, les chaines et les commentaires de ligne restent du texte. Un vrai commentaire de bloc non termine est rejete avant l'ecriture du fichier.

 Un bloc ouvert et ferme sur la meme ligne, comme #strong[if ready, value \= 1; end];, n'augmente pas l'indentation des lignes suivantes. Un #strong[end]; utilise dans une indexation ne ferme pas un bloc.


== Voir aussi

#nlink(<text_editor:edit>)[edit];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [parametre fullformat ajoute],
)

// Auteur: Allan CORNET
