#import "nelson_help.typ": *

= nelson.htmlviewer.htmlviewer <webview:nelson_htmlviewer_htmlviewer>

Handle vers une fenetre du visualiseur HTML Nelson.

== Syntaxe

- #raw("h = nelson.htmlviewer.htmlviewer()");
- #raw("h = nelson.htmlviewer.htmlviewer(input)");
- #raw("htmlText = getHTMLText(h)");
- #raw("close(h)");

== Argument d'entrée

/ input: chaine : chemin local, URL file ou URL text.

== Argument de sortie

/ h: handle du visualiseur HTML.
/ htmlText: texte du document HTML courant.

== Description

La classe #strong[nelson.htmlviewer.htmlviewer]; represente une fenetre du visualiseur HTML. Ses proprietes publiques sont #strong[Input]; et #strong[Visible];.


== Exemple

Afficher du HTML et lire le texte du document.

``````matlab
h = nelson.htmlviewer.htmlviewer('text://<html><body>Hello</body></html>');
txt = getHTMLText(h);
close(h);

``````


== Voir aussi

#nlink(<webview:web>)[web];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
