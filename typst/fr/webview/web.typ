#import "nelson_help.typ": *

= web <webview:web>

Ouvre une page web, un fichier local ou du texte HTML.

== Syntaxe

- #raw("web()");
- #raw("web(url)");
- #raw("web(url, option1, ..., optionN)");
- #raw("stat = web(...)");
- #raw("[stat, h, url] = web(...)");

== Argument d'entrée

/ url: chaine : adresse web, chemin local, URL file ou URL text.
/ option: une valeur parmi '-browser', '-new', '-noaddressbox' ou '-notoolbar'.

== Argument de sortie

/ stat: 0 en cas de succes, valeur non nulle sinon.
/ h: handle du visualiseur HTML, ou vide lorsque le navigateur systeme est utilise.
/ url: entree courante du visualiseur HTML, ou chaine vide lorsque le navigateur systeme est utilise.

== Description

#strong[web]; ouvre les adresses externes dans le navigateur systeme et ouvre le contenu HTML local ou inline dans le visualiseur HTML Nelson.


== Exemple

Afficher du texte HTML inline.

``````matlab
[stat, h] = web('text://<html><body><h1>Hello</h1></body></html>');
``````


== Voir aussi

#nlink(<webview:nelson_htmlviewer_htmlviewer>)[nelson.htmlviewer.htmlviewer];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
