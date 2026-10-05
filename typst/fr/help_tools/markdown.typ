#import "nelson_help.typ": *

= markdown <help_tools:markdown>

Convertit le Markdown en HTML.

== Syntaxe

- #raw("html_txt = markdown(md_txt)");
- #raw("html_txt = markdown(md_txt, options)");
- #raw("status = markdown(md_filename, html_filename)");
- #raw("status = markdown(md_filename, html_filename, options)");

== Argument d'entrée

/ md\_txt: une chaîne : texte markdown à convertir.
/ md\_filename: une chaîne : nom du fichier markdown à convertir (source).
/ html\_filename: une chaîne : nom du fichier html (destination).
/ options: une chaîne : options pour la conversion. 'secure' (par défaut) ou 'advanced'.

== Argument de sortie

/ status: un booléen : le fichier HTML a été généré ou non.

== Description

#strong[markdown]; convertit du texte Markdown en HTML.

 Options :

 

- #strong[secure]; (par défaut) : seul un sous-ensemble de Markdown est pris en charge (pas de HTML brut, pas de tableaux, pas d'images, pas de liens).
- #strong[advanced]; : Markdown complet pris en charge (y compris HTML brut, tableaux, images, liens).
== Exemples

``````matlab
txt = {'## Example of Markdown text';
'>Nelson supports markdown ...'};
html = markdown(txt);
filewrite([tempdir(), 'markdown_example.html'], html)

if ispc()
  winopen([tempdir(), 'markdown_example.html']);
end
``````

``````matlab
txt = 'Hello <script>alert("XSS")</script> World';
advanced_html = markdown(txt, 'advanced')
secure_html = markdown(txt, 'secure')

``````


== Voir aussi

#nlink(<help_tools:htmltopdf>)[htmltopdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.15.0], ['secure', 'advanced' modes added],
)

// Auteur: Allan CORNET
