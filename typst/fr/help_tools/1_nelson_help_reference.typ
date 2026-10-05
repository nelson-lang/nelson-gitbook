#import "nelson_help.typ": *

= Aide Nelson <help_tools:1_nelson_help_reference>

Comment rédiger des fichiers XML d'aide pour Nelson (éléments, attributs, exemples, conseils).

Ce document est la référence canonique pour la création de fichiers XML d'aide utilisés par Nelson. Il explique la structure requise par #raw("nelson_help.xsd"); et comment #raw("nelson_html.xslt"); transforme chaque élément en HTML. Utilisez ce fichier comme modèle et liste de contrôle lors de la création ou de la révision de pages de documentation.


== Syntaxe

- #raw("`<xmldoc>` (root) - Enfant OBLIGATOIRE : `<language>`");
- #raw("Header: `<title>`, `<language>`, `<module_name>`, `<chapter>`, `<short_description>`");
- #raw("Sections: `<syntax>`, `<param_input>`, `<param_output>`, `<description>`, `<examples>`, `<see_also>`, `<history>`, `<authors>`, `<bibliography>`");

== Argument d'entrée

/ language: Localisation utilisée par le XSLT pour sélectionner les étiquettes et le texte localisé. Exemples :#raw("en_US");,#raw("fr_FR");. Cet élément est obligatoire dans la racine#raw("`<xmldoc>`");.


/ keyword: Identifiant principal affiché comme titre de la page par le XSLT. En cas d'absence, le XSLT revient à #raw("`<chapter>`"); ou "Documentation".



== Argument de sortie

/ html: Le XSLT génère un fichier HTML en utilisant des ressources locales : #raw("highlight.css");, #raw("nelson_common.css"); et #raw("nelson_help.js");. Les images sont copiées via l'extension#raw("ext:copy_img");.



== Description

Une référence lisible par l'homme et un ensemble d'exemples définitifs décrivant le format de fichier XML d'aide défini par #raw("nelson_help.xsd");, et comment #raw("nelson_html.xslt"); transforme ses éléments en HTML.

 Utilisez #raw("`<description>`"); pour fournir le corps principal de la documentation. Il accepte des paragraphes (#raw("`<p>`");), des listes (#raw("`<ul>`");, #raw("`<ol>`");), des tableaux (#raw("`<table>`");), des balisages en ligne (#raw("`<b>`");, #raw("`<i>`");, #raw("`<code>`");), des images (#raw("`<img src=\"...\"/>`");) et LaTeX (#raw("`<latex>`");).

 Les éléments en ligne et leur rendu XSLT :

 

- #strong[\`\<b\>\`]; - texte en gras.
- #strong[\`\<i\>\`]; - texte en italique.
- #strong[\`\<code\>\`]; - rendu de code en ligne.
- #strong[\`\<a href\="..." \>\`]; - liens externes (rendus en tant qu'ancres HTML).
- #strong[\`\<link linkend\="..." \>\`]; - référence croisée interne. Si linkend contient un module entre accolades#raw("{module}name");, il devient#raw("../module/name.html");, sinon#raw("name.html");.
- #strong[\`\<latex\>\`]; - expressions mathématiques ; rendues en tant que mathématiques d'affichage MathJax par le modèle XSLT (enveloppées avec #raw("`$$...$$`");).
- #strong[\`\<img src\="..."\/\>\`]; - images. Le XSLT appelle #raw("ext:copy_img(@src)");; les SVG sont rendus avec un cadre fixe large et les autres formats sont adaptables. Éléments de bloc :

 

- #raw("`<ul>`"); et #raw("`<ol>`"); - listes. Utilisez #raw("`<li>`"); avec un balisage en ligne\/de bloc imbriqué selon les besoins.
- #raw("`<table>`"); - utilisez #raw("`<thead>`");, #raw("`<tbody>`");, #raw("`<tr>`");, #raw("`<th>`"); et #raw("`<td>`");. Le XSD autorise les attributs communs #raw("border");, #raw("cellpadding"); et #raw("cellspacing");. Conseils pour la rédaction :

 

+ Préférez des lignes de résumé courtes pour #raw("`<short_description>`");.
+ Placez les exemples exécutables à l'intérieur de#raw("`<examples>`");en utilisant#raw("`<example_item_data>`");et définissez#raw("runnable=\"cli\"\n        ");si applicable ou#raw("runnable=\"false\"\n        ");(par défaut).
+ Enveloppez le code source de l'exemple dans CDATA pour éviter l'échappement (voir les exemples ci-dessous).
+ Utilisez#raw("`<link linkend=\"{module}name\"\n          >`");pour les références qualifiées par module ; sinon, utilisez des noms simples. #strong[Prise en charge des sous-chapitres]; - Le système d'aide de Nelson prend en charge les sous-chapitres imbriqués. Pour en ajouter un :

 

+ Créez un sous-répertoire dans le dossier d'aide XML de votre module (par exemple #raw("plots");).
+ Dans ce répertoire, ajoutez un #raw("chapter.xml"); contenant au minimum #raw("`<language>`"); et #raw("`<chapter>`");, et éventuellement #raw("`<chapter_description>`");.
+ Placez les fichiers de sujet XML (par exemple #raw("mesh.xml");) dans le sous-répertoire ; les fichiers de sujet utilisent les éléments habituels comme #raw("`<keyword>`"); et #raw("`<short_description>`");.
+ Liez les pages imbriquées en utilisant des chemins séparés par des slash : pour des liens dans le même module utilisez #raw("`<link linkend=\"plots/mesh\"\n          >mesh</link>`");, pour des liens inter-modules utilisez #raw("`<link linkend=\"{module}plots/mesh\"\n          >mesh</link>`");. L'outil #raw("buildhelp"); et le XSLT résolvent ces chemins et généreront des pages HTML imbriquées (par exemple #raw("plots/mesh.html");).


== Bibliographie

https:\/\/github.com\/nelson-lang\/nelson\/blob\/master\/modules\/help\_tools\/help\/fr\_FR\/xml\/1\_nelson\_help\_reference.xml

== Exemples

Exemple minimal exécutable

``````matlab

% Exemple simple
x = rand(1,10);
[y, info] = myfunc(x);
disp(info);
      
``````

Exemple de sous-chapitre (chapter.xml)

``````matlab
<?xml version="1.0" encoding="UTF-8"?>
<xmldoc>
  <language>en_US</language>
  <chapter>Plots</chapter>
  <chapter_description>
    <p>Plotting functions grouped in a subchapter.</p>
  </chapter_description>
</xmldoc>

``````

Exemple avec sortie d'image

``````matlab

% Générer un graphique et l'enregistrer au format SVG
x = 0:0.1:2*pi;
y = sin(x);
plot(x,y);
saveas(gcf(), [tempdir(),'example_plot.svg']);
      
``````


#align(center)[#image("example_plot.svg", alt: "Example plot")]

== Voir aussi

#nlink(<help_tools:doc>)[doc];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot (module graphique)];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
  [1.17.0], [ajout du support des sous-chapitres],
)

// Auteur: Allan CORNET
