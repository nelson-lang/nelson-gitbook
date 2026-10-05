#import "nelson_help.typ": *

= htmltopdf <help_tools:htmltopdf>

Convertit une page HTML en PDF.

== Syntaxe

- #raw("htmltopdf(html_filename, pdf_filename)");

== Argument d'entrée

/ html\_filename: une chaîne : nom du fichier html.
/ pdf\_filename: une chaîne : nom du fichier pdf (destination).

== Description

#strong[htmltopdf]; convertit une page HTML en PDF.


== Exemple

``````matlab
txt = {'## Example of Markdown text';
'>Nelson html to pdf conversion example'};

html = markdown(txt);
f = fopen([tempdir(), 'htmltopdf_example.html'], 'wt');
fwrite(f, html);
fclose(f);

htmltopdf([tempdir(), 'htmltopdf_example.html'], [tempdir(), 'htmltopdf_example.pdf'])
if ispc()
  winopen([tempdir(), 'htmltopdf_example.pdf']);
end
``````


== Voir aussi

#nlink(<help_tools:markdown>)[markdown];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
