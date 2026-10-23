#import "nelson_help.typ": *

= nlx <notebook:nlx>

Le format de document Notebook de Nelson (.nlx).

== Description

Un fichier #strong[.nlx]; est le document Notebook natif de Nelson. C'est un conteneur #strong[zip]; (de type OPC) qui garde séparés la source, les résultats sauvegardés et les figures dans un seul fichier portable.

 Le conteneur comporte ces entrées :

 #strong[manifest.json]; - le marqueur de format : #strong[format]; (#strong[nelson-notebook];) et #strong[version];.

 #strong[document.json]; - la source : un objet avec un tableau #strong[blocks]; (le contenu ordonné du Notebook). Cette partie reste légère et se compare proprement, et le lecteur headless l'analyse directement.

 #strong[output.json]; - les résultats sauvegardés : pour chaque cellule de code, sa dernière sortie texte, son erreur et ses références de figures, indexés par identifiant de bloc. Régénérables en réexécutant le document, et tenus à part pour ne jamais polluer la source.

 #strong[media\/]; - les figures produites par une cellule de code, extraites en fichiers image (par exemple #strong[media\/fig0.png];) pour garder les parties JSON légères et conserver les images sans perte.

 Chaque élément de #strong[blocks]; est un objet avec un #strong[type]; et un objet #strong[props]; :

 #strong[heading]; \/ #strong[paragraph]; - texte mis en forme (un titre porte #strong[props.level];).

 #strong[codecell]; - une cellule de code Nelson ; #strong[props.code]; est le code. Ses résultats vivent dans #strong[output.json];, pas dans la cellule.

 #strong[equation]; - une équation LaTeX (#strong[props.latex];).

 les contrôles interactifs (slider, liste déroulante, case à cocher, ...) et les live tasks - stockés avec leur variable liée et leur valeur dans #strong[props];.

 Seules les cellules #strong[codecell]; sont exécutables. #strong[notebook]; et #strong[run]; évaluent leur #strong[props.code]; dans l'ordre dans l'espace de travail de base ; #strong[edit]; ouvre le document dans l'éditeur Notebook.

 Un Notebook peut aussi être enregistré en texte brut #strong[.m];, où chaque bloc est écrit sous un marqueur #strong[%% \[kind\]]; : il s'ouvre dans n'importe quel éditeur et s'exécute comme un script ordinaire.


== Exemples

Les entrées d'un conteneur .nlx.

``````matlab

manifest.json
document.json
output.json
media/fig0.png

``````

Un document.json minimal.

``````matlab

{
  "blocks": [
    { "type": "heading", "props": { "level": 1 }, "content": "Mon Notebook" },
    { "type": "paragraph", "content": "Une courte description." },
    { "type": "codecell", "props": { "code": "x = linspace(0, 1, 10);\nplot(x)" } }
  ]
}

``````


== Voir aussi

#nlink(<notebook:notebook>)[notebook];, #nlink(<core:run>)[run];, #nlink(<text_editor:edit>)[edit];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
