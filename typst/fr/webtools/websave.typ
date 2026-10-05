#import "nelson_help.typ": *

= websave <webtools:websave>

Enregistrer les données d'un service web RESTful dans un fichier

== Syntaxe

- #raw("result_filename = websave(filename, url)");
- #raw("result_filename = websave(filename, url, name1, value1, ... , nameN, valueN)");
- #raw("result_filename = websave(filename, url, name1, value1, ... , nameN, valueN, options)");

== Argument d'entrée

/ filename: chaîne : nom du fichier où sauvegarder le contenu.
/ url: chaîne : URL d'un service web.
/ name1, value1, ... , nameN, valueN: Arguments Nom-Valeur.
/ options: objet weboptions.

== Argument de sortie

/ result\_filename: chaîne : chemin complet du fichier résultat.

== Description

#strong[websave()]; enregistre le contenu provenant du web dans#strong[filename];.

 La fonction websave renvoie le chemin complet du fichier en tant que #strong[result\_filename];.


== Exemple

``````matlab
url ='https://httpbin.org/get';
filename = [tempdir(), 'test.txt'];
destination_filename = websave(filename, url, weboptions('ContentType','json'));
txt = fileread(filename)
``````


== Voir aussi

#nlink(<webtools:weboptions>)[weboptions];, #nlink(<webtools:webread>)[webread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
