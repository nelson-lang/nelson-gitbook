#import "nelson_help.typ": *

= urlencode <webtools:urlencode>

Remplacer les caractères spéciaux dans les URLs par des séquences d'échappement.

== Syntaxe

- #raw("new_url = webread(url)");

== Argument d'entrée

/ url: chaîne : URL d'un service web.

== Argument de sortie

/ new\_url: chaîne : URL encodée.

== Description

#strong[urlencode]; remplace les caractères spéciaux dans une URL par leurs séquences d'échappement.

 Par exemple, les espaces doivent être remplacés par '%20'.


== Exemple

``````matlab
url = 'https://httpbin.org/get?query=hello world';
res = urlencode(url)

``````


== Voir aussi

#nlink(<webtools:webread>)[webread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.11.0], [version initiale],
)

// Auteur: Allan CORNET
