# NFlow.sspInfo

Inspecte, importe et exporte des archives SSP (System Structure and Parameterization).

## 📝 Syntaxe

- info = NFlow.sspInfo(sspFile)
- nflowFile = NFlow.sspImport(sspFile, destinationDirectory)
- sspFile = NFlow.sspExport(sspFile, components, connections)
- sspFile = NFlow.sspExportDiagram(nflowFile, sspFile)
- NFlow.writeSsv(ssvFile, parameterValues)

## 📥 Argument d'entrée

- sspFile - un vecteur de caractères : chemin d'une archive <b>.ssp</b> (un zip contenant un <b>SystemStructure.ssd</b> et ses FMU de composants sous <b>resources/</b>).
- destinationDirectory - un vecteur de caractères : un répertoire existant qui reçoit les FMU de composants extraits et le modèle <b>.nflow</b> généré.
- nflowFile - un vecteur de caractères : chemin d'un diagramme <b>.nflow</b> dont les blocs sont des blocs <b>fmu</b> (tel que produit par <b>NFlow.sspImport</b>), remis dans une archive SSP par <b>NFlow.sspExportDiagram</b>.
- components - un tableau de structures avec les champs <b>name</b> et <b>model</b> (le chemin du modèle <b>.nflow</b> de chaque composant).
- connections - un tableau de structures avec les champs <b>startElement</b>, <b>startConnector</b>, <b>endElement</b>, <b>endConnector</b>. Un <b>startElement</b> vide désigne une entrée du système et un <b>endElement</b> vide une sortie du système.

## 📤 Argument de sortie

- info - une structure avec les champs <b>name</b>, <b>systemConnectors</b> (les connecteurs propres du système parent, <b>name</b>/<b>kind</b>), <b>components</b> (chacun <b>name</b>, <b>source</b>, <b>type</b>, <b>implementation</b>, <b>parameterSources</b>) et <b>connections</b> (chacune <b>startElement</b>, <b>startConnector</b>, <b>endElement</b>, <b>endConnector</b>).
- nflowFile - le chemin du modèle <b>.nflow</b> écrit par <b>NFlow.sspImport</b>.

## 📄 Description


SSP (<b>System Structure and Parameterization</b>) est un standard ouvert qui regroupe plusieurs FMU et la façon dont leurs connecteurs sont câblés dans une seule archive <b>.ssp</b>. 

<b>NFlow.sspInfo</b> lit le <b>SystemStructure.ssd</b> de l'archive et décrit la composition sans charger aucun binaire : le nom du système, ses composants et chaque connexion entre connecteurs. 

<b>NFlow.sspImport</b> câble chaque composant dans un diagramme nflow : tout composant FMI 3.0 Co-Simulation devient un bloc <b>fmu</b>, les connecteurs sont associés aux ports par leur nom, et une sortie de composant routée vers une sortie du système est exposée comme un puits enregistrable. Les valeurs de paramètres liées à un composant — via un fichier <b>.ssv</b> (System Structure Parameter Values) ou intégrées directement dans le <b>.ssd</b> — sont appliquées à son bloc FMU. Les composants non FMI 3.0 sont signalés avec leur version déclarée plutôt que d'échouer de façon obscure. 

<b>NFlow.sspExport</b> réalise l'opération inverse : il exporte chaque modèle de composant vers un FMU, liste ses connecteurs et écrit un <b>SystemStructure.ssd</b> décrivant la composition. Les connexions qui référencent le système parent (un élément de départ ou d'arrivée vide) sont déclarées comme connecteurs au niveau du système. 

<b>NFlow.sspExportDiagram</b> est l'inverse exact de <b>NFlow.sspImport</b> : il prend un diagramme dont les blocs sont des blocs <b>fmu</b> et réémet une archive SSP qui référence directement ces mêmes FMU de composants (sans les réexporter). Les fils entre blocs FMU deviennent des connexions — les indices de ports sont retrouvés sous forme de noms de connecteurs par inspection — et chaque puits <b>To Workspace</b> alimenté par une sortie FMU devient un connecteur de sortie du système. Importer une archive SSP puis exporter le diagramme obtenu reproduit les composants de la composition, ses liens composant à composant et ses sorties système (une entrée système n'a pas de bloc source après import, elle n'est donc pas reproduite). Les surcharges de paramètres portées par un bloc FMU (telles qu'appliquées par <b>NFlow.sspImport</b> depuis un <b>.ssv</b>) sont réécrites dans un <b>.ssv</b> lié, de sorte que les valeurs de paramètres font également l'aller-retour. 

<b>NFlow.writeSsv</b> écrit une structure nom/valeur de paramètres dans un fichier <b>.ssv</b> (l'inverse de <b>NFlow.readSsv</b>) : les valeurs <b>logical</b> deviennent Boolean, les entiers Integer, le reste Real.

## 📚 Bibliographie

Modelica Association, standard System Structure and Parameterization (SSP), https://ssp-standard.org

## 💡 Exemples

Inspecter la composition « controlled drivetrain » fournie

```matlab
ssp = [modulepath('nflow_fmi', 'root'), '/examples/ControlledDrivetrain.ssp'];
info = NFlow.sspInfo(ssp);
disp(info.name);
disp({info.components.name});
disp(numel(info.connections));
```
Aller-retour d'une composition : SSP -> diagramme -> SSP

```matlab
ssp = [modulepath('nflow_fmi', 'root'), '/examples/ControlledDrivetrain.ssp'];
work = [tempdir(), 'ssp_roundtrip'];
mkdir(work);
nflowFile = NFlow.sspImport(ssp, work);
outSsp = NFlow.sspExportDiagram(nflowFile, [work, filesep, 'RoundTrip.ssp']);
info = NFlow.sspInfo(outSsp);
disp({info.components.name});
```


## 🔗 Voir aussi

[sim](../nflow_engine/sim.md), [fmiCoSimulate](../nflow_fmi/fmiCoSimulate.md), [fmiInfo](../nflow_fmi/fmiInfo.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | NFlow.sspExportDiagram : remettre un diagramme de blocs FMU dans une archive SSP ; NFlow.writeSsv exporte les valeurs de paramètres (aller-retour SSV) |

<!--
## 👤 Auteur

Allan CORNET
-->
