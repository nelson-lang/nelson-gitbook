#import "nelson_help.typ": *

= fmuToBlock <nflow_fmi:fmuToBlock>

Transforme une FMU en bloc natif nflow (manifeste).

== Syntaxe

- #raw("block = fmuToBlock(fmu)");
- #raw("block = fmuToBlock(fmu, name, value)");

== Argument d'entrée

/ fmu: une chaîne : le chemin d'une archive #strong[.fmu]; ou d'un répertoire de FMU déjà extrait.
/ name, value: paires d'options : #strong['Name']; (libellé du bloc \/ titre de bibliothèque, par défaut l'identifiant de modèle de la FMU), #strong['IconDir']; (répertoire d'extraction de l'icône), #strong['LibraryFile']; (écrit aussi un #strong[library.json]; à un bloc à ce chemin), #strong['LibraryId']; (l'identifiant de bibliothèque, par défaut #strong[user.\<name\>];).

== Argument de sortie

/ block: une structure décrivant le bloc généré, dans le même schéma qu'une entrée de bloc de #strong[library.json];.

== Description

#strong[fmuToBlock]; est l'assistant d'import de FMU de nflow. Il lit la #strong[modelDescription.xml]; d'une FMU et produit un bloc nflow d'aspect natif : un port d'entrée par variable de causalité #strong[input];, un port de sortie par #strong[output];, les paramètres de la FMU, son icône (le #strong[model.png]; s'il est présent, sinon un rendu de repli avec libellé), et un paramètre #strong[path]; par défaut pointant vers la #strong[.fmu];.

 Le bloc généré vise le gestionnaire #strong[fmu]; du moteur : le poser donne un bloc FMU fonctionnel qui se simule via le chemin FMI existant, sans nouveau runtime. L'intérêt est côté édition : une FMU devient un bloc de palette de première classe, nommé et doté d'une icône, au lieu d'une boîte générique. Cela se marie avec le pont Modelica, dont #strong[modelicaToFmu]; produit des FMU que #strong[fmuToBlock]; peut ensuite envelopper.

 Avec l'option #strong['LibraryFile'];, un #strong[library.json]; à un bloc est également écrit, prêt à charger dans l'éditeur nflow. Beaucoup de FMU ne fournissent pas d'icône ; le rendu est alors un repli propre avec libellé.


== Exemples

Importer une FMU de référence en bloc et écrire une bibliothèque.

``````matlab
fmu = [modulepath('nflow_fmi'), '/examples/VanDerPol.fmu'];
block = fmuToBlock(fmu, 'Name', 'VanDerPol', 'LibraryFile', [tempdir(), '/vdp.json'])
``````

Envelopper un modèle Modelica compilé via le pont.

``````matlab
src = sprintf('model FO\n  output Real x(start = 1.0);\nequation\n  der(x) = -x;\nend FO;\n');
fmu = modelicaToFmu(src);
block = fmuToBlock(fmu, 'Name', 'FirstOrder')
``````


== Voir aussi

#nlink(<nflow_fmi:fmiInfo>)[fmiInfo];, #nlink(<nflow_fmi:modelicaToFmu>)[modelicaToFmu];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
