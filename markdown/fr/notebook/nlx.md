# nlx

Le format de document Notebook de Nelson (.nlx).

## 📄 Description


Un fichier <b>.nlx</b> est le document Notebook natif de Nelson. C'est un conteneur <b>zip</b> (de type OPC) qui garde séparés la source, les résultats sauvegardés et les figures dans un seul fichier portable. 

Le conteneur comporte ces entrées : 

<b>manifest.json</b> - le marqueur de format : <b>format</b> (<b>nelson-notebook</b>) et <b>version</b>. 

<b>document.json</b> - la source : un objet avec un tableau <b>blocks</b> (le contenu ordonné du Notebook). Cette partie reste légère et se compare proprement, et le lecteur headless l'analyse directement. 

<b>output.json</b> - les résultats sauvegardés : pour chaque cellule de code, sa dernière sortie texte, son erreur et ses références de figures, indexés par identifiant de bloc. Régénérables en réexécutant le document, et tenus à part pour ne jamais polluer la source. 

<b>media/</b> - les figures produites par une cellule de code, extraites en fichiers image (par exemple <b>media/fig0.png</b>) pour garder les parties JSON légères et conserver les images sans perte. 

Chaque élément de <b>blocks</b> est un objet avec un <b>type</b> et un objet <b>props</b> : 

<b>heading</b> / <b>paragraph</b> - texte mis en forme (un titre porte <b>props.level</b>). 

<b>codecell</b> - une cellule de code Nelson ; <b>props.code</b> est le code. Ses résultats vivent dans <b>output.json</b>, pas dans la cellule. 

<b>equation</b> - une équation LaTeX (<b>props.latex</b>). 

les contrôles interactifs (slider, liste déroulante, case à cocher, ...) et les live tasks - stockés avec leur variable liée et leur valeur dans <b>props</b>. 

Seules les cellules <b>codecell</b> sont exécutables. <b>notebook</b> et <b>run</b> évaluent leur <b>props.code</b> dans l'ordre dans l'espace de travail de base ; <b>edit</b> ouvre le document dans l'éditeur Notebook. 

Un Notebook peut aussi être enregistré en texte brut <b>.m</b>, où chaque bloc est écrit sous un marqueur <b>%% [kind]</b> : il s'ouvre dans n'importe quel éditeur et s'exécute comme un script ordinaire.

## 💡 Exemples

Les entrées d'un conteneur .nlx.

```matlab

manifest.json
document.json
output.json
media/fig0.png

```
Un document.json minimal.

```matlab

{
  "blocks": [
    { "type": "heading", "props": { "level": 1 }, "content": "Mon Notebook" },
    { "type": "paragraph", "content": "Une courte description." },
    { "type": "codecell", "props": { "code": "x = linspace(0, 1, 10);\nplot(x)" } }
  ]
}

```


## 🔗 Voir aussi

[notebook](../notebook/notebook.md), [run](../core/run.md), [edit](../text_editor/edit.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
