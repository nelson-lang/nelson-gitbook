#import "nelson_help.typ": *

= argv <engine:argv>

Arguments de la ligne de commande de Nelson.

== Syntaxe

- #raw("args = argv()");
- #raw("args = argv('user')");

== Argument d'entrée

/ 'user': renvoie seulement les arguments situes apres le separateur de ligne de commande #strong[--];.

== Argument de sortie

/ args: un tableau de cellules contenant des chaines de caracteres.

== Description

#strong[argv()]; renvoie un tableau de cellules contenant les arguments complets de la ligne de commande Nelson.

 Le premier element du tableau contient le chemin de l'executable lance.

 #strong[argv('user')]; renvoie uniquement les arguments places apres #strong[--];. Le separateur lui-meme n'est pas retourne.

 Si la ligne de commande ne contient pas #strong[--];, #strong[argv('user')]; renvoie un tableau de cellules vide.

 Quand un test est execute par #strong[test\_run];, #strong[argv('user')]; peut contenir des arguments utilisateur fournis par le gestionnaire de tests, par exemple des options de controle du demarrage placees apres #strong[--];.

 Les guillemets utilises pour grouper des arguments sont traites par le systeme d'exploitation ou le shell avant le demarrage de Nelson. Nelson conserve les arguments tels qu'ils sont recus.


== Exemples

``````matlab
argv()
``````

``````matlab
argv('user')
``````

``````matlab
nelson-cli -e "disp(argv('user')); quit" -- "a b" "c d"
``````


== Voir aussi

#nlink(<engine:executable>)[executable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
