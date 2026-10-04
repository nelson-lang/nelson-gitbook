# fmuToBlock

Transforme une FMU en bloc natif nflow (manifeste).

## 📝 Syntaxe

- block = fmuToBlock(fmu)
- block = fmuToBlock(fmu, name, value)

## 📥 Argument d'entrée

- fmu - une chaîne : le chemin d'une archive <b>.fmu</b> ou d'un répertoire de FMU déjà extrait.
- name, value - paires d'options : <b>'Name'</b> (libellé du bloc / titre de bibliothèque, par défaut l'identifiant de modèle de la FMU), <b>'IconDir'</b> (répertoire d'extraction de l'icône), <b>'LibraryFile'</b> (écrit aussi un <b>library.json</b> à un bloc à ce chemin), <b>'LibraryId'</b> (l'identifiant de bibliothèque, par défaut <b>user.<name></b>).

## 📤 Argument de sortie

- block - une structure décrivant le bloc généré, dans le même schéma qu'une entrée de bloc de <b>library.json</b>.

## 📄 Description

<b>fmuToBlock</b> est l'assistant d'import de FMU de nflow. Il lit la <b>modelDescription.xml</b> d'une FMU et produit un bloc nflow d'aspect natif : un port d'entrée par variable de causalité <b>input</b>, un port de sortie par <b>output</b>, les paramètres de la FMU, son icône (le <b>model.png</b> s'il est présent, sinon un rendu de repli avec libellé), et un paramètre <b>path</b> par défaut pointant vers la <b>.fmu</b>.

Le bloc généré vise le gestionnaire <b>fmu</b> du moteur : le poser donne un bloc FMU fonctionnel qui se simule via le chemin FMI existant, sans nouveau runtime. L'intérêt est côté édition : une FMU devient un bloc de palette de première classe, nommé et doté d'une icône, au lieu d'une boîte générique. Cela se marie avec le pont Modelica, dont <b>modelicaToFmu</b> produit des FMU que <b>fmuToBlock</b> peut ensuite envelopper.

Avec l'option <b>'LibraryFile'</b>, un <b>library.json</b> à un bloc est également écrit, prêt à charger dans l'éditeur nflow. Beaucoup de FMU ne fournissent pas d'icône ; le rendu est alors un repli propre avec libellé.

## 💡 Exemples

Importer une FMU de référence en bloc et écrire une bibliothèque.

```matlab
fmu = [modulepath('nflow_fmi'), '/examples/VanDerPol.fmu'];
block = fmuToBlock(fmu, 'Name', 'VanDerPol', 'LibraryFile', [tempdir(), '/vdp.json'])
```

Envelopper un modèle Modelica compilé via le pont.

```matlab
src = sprintf('model FO\n  output Real x(start = 1.0);\nequation\n  der(x) = -x;\nend FO;\n');
fmu = modelicaToFmu(src);
block = fmuToBlock(fmu, 'Name', 'FirstOrder')
```

## 🔗 Voir aussi

[fmiInfo](../nflow_fmi/fmiInfo.md), [modelicaToFmu](../nflow_fmi/modelicaToFmu.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
