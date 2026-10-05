#import "nelson_help.typ": *

= webread <webtools:webread>

Lire des données depuis un service web RESTful vers une variable Nelson

== Syntaxe

- #raw("var = webread(url)");
- #raw("var = webread(url, name1, value1, ... , nameN, valueN)");
- #raw("var = webread(url, name1, value1, ... , nameN, valueN, options)");

== Argument d'entrée

/ url: chaîne : URL d'un service web.
/ name1, value1, ... , nameN, valueN: Arguments Nom-Valeur.
/ options: objet weboptions.

== Argument de sortie

/ var: variable : contenu provenant du web.

== Description

#strong[webread()]; lit du contenu depuis le web et le charge dans une variable Nelson.


== Exemples

``````matlab
url = 'https://httpbin.org/get';
res = webread(url,weboptions('ContentType','json'));

``````

More demos

``````matlab
edit([modulepath('webtools'),'/examples/webread_demo_1.m'])

``````

Use function\_handle with weboptions and webread

``````matlab
edit([modulepath('webtools'),'/examples/webread_demo_2.m'])

``````

Read data from National Agricultural Statistics Service

``````matlab
edit([modulepath('webtools'),'/examples/webread_demo_3.m'])

``````


== Voir aussi

#nlink(<webtools:weboptions>)[weboptions];, #nlink(<webtools:websave>)[websave];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
