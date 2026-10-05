#import "nelson_help.typ": *

= NFlow.sspInfo <nflow_engine:ssp>

Inspecte, importe et exporte des archives SSP (System Structure and Parameterization).

== Syntaxe

- #raw("info = NFlow.sspInfo(sspFile)");
- #raw("nflowFile = NFlow.sspImport(sspFile, destinationDirectory)");
- #raw("sspFile = NFlow.sspExport(sspFile, components, connections)");
- #raw("sspFile = NFlow.sspExportDiagram(nflowFile, sspFile)");
- #raw("NFlow.writeSsv(ssvFile, parameterValues)");

== Argument d'entrée

/ sspFile: un vecteur de caractères : chemin d'une archive #strong[.ssp]; (un zip contenant un #strong[SystemStructure.ssd]; et ses FMU de composants sous #strong[resources\/];).
/ destinationDirectory: un vecteur de caractères : un répertoire existant qui reçoit les FMU de composants extraits et le modèle #strong[.nflow]; généré.
/ nflowFile: un vecteur de caractères : chemin d'un diagramme #strong[.nflow]; dont les blocs sont des blocs #strong[fmu]; (tel que produit par #strong[NFlow.sspImport];), remis dans une archive SSP par #strong[NFlow.sspExportDiagram];.
/ components: un tableau de structures avec les champs #strong[name]; et #strong[model]; (le chemin du modèle #strong[.nflow]; de chaque composant).
/ connections: un tableau de structures avec les champs #strong[startElement];, #strong[startConnector];, #strong[endElement];, #strong[endConnector];. Un #strong[startElement]; vide désigne une entrée du système et un #strong[endElement]; vide une sortie du système.

== Argument de sortie

/ info: une structure avec les champs #strong[name];, #strong[systemConnectors]; (les connecteurs propres du système parent, #strong[name];\/#strong[kind];), #strong[components]; (chacun #strong[name];, #strong[source];, #strong[type];, #strong[implementation];, #strong[parameterSources];) et #strong[connections]; (chacune #strong[startElement];, #strong[startConnector];, #strong[endElement];, #strong[endConnector];).
/ nflowFile: le chemin du modèle #strong[.nflow]; écrit par #strong[NFlow.sspImport];.

== Description

SSP (#strong[System Structure and Parameterization];) est un standard ouvert qui regroupe plusieurs FMU et la façon dont leurs connecteurs sont câblés dans une seule archive #strong[.ssp];.

 #strong[NFlow.sspInfo]; lit le #strong[SystemStructure.ssd]; de l'archive et décrit la composition sans charger aucun binaire : le nom du système, ses composants et chaque connexion entre connecteurs.

 #strong[NFlow.sspImport]; câble chaque composant dans un diagramme nflow : tout composant FMI 3.0 Co-Simulation devient un bloc #strong[fmu];, les connecteurs sont associés aux ports par leur nom, et une sortie de composant routée vers une sortie du système est exposée comme un puits enregistrable. Les valeurs de paramètres liées à un composant — via un fichier #strong[.ssv]; (System Structure Parameter Values) ou intégrées directement dans le #strong[.ssd]; — sont appliquées à son bloc FMU. Les composants non FMI 3.0 sont signalés avec leur version déclarée plutôt que d'échouer de façon obscure.

 #strong[NFlow.sspExport]; réalise l'opération inverse : il exporte chaque modèle de composant vers un FMU, liste ses connecteurs et écrit un #strong[SystemStructure.ssd]; décrivant la composition. Les connexions qui référencent le système parent (un élément de départ ou d'arrivée vide) sont déclarées comme connecteurs au niveau du système.

 #strong[NFlow.sspExportDiagram]; est l'inverse exact de #strong[NFlow.sspImport]; : il prend un diagramme dont les blocs sont des blocs #strong[fmu]; et réémet une archive SSP qui référence directement ces mêmes FMU de composants (sans les réexporter). Les fils entre blocs FMU deviennent des connexions — les indices de ports sont retrouvés sous forme de noms de connecteurs par inspection — et chaque puits #strong[To Workspace]; alimenté par une sortie FMU devient un connecteur de sortie du système. Importer une archive SSP puis exporter le diagramme obtenu reproduit les composants de la composition, ses liens composant à composant et ses sorties système (une entrée système n'a pas de bloc source après import, elle n'est donc pas reproduite). Les surcharges de paramètres portées par un bloc FMU (telles qu'appliquées par #strong[NFlow.sspImport]; depuis un #strong[.ssv];) sont réécrites dans un #strong[.ssv]; lié, de sorte que les valeurs de paramètres font également l'aller-retour.

 #strong[NFlow.writeSsv]; écrit une structure nom\/valeur de paramètres dans un fichier #strong[.ssv]; (l'inverse de #strong[NFlow.readSsv];) : les valeurs #strong[logical]; deviennent Boolean, les entiers Integer, le reste Real.


== Bibliographie

Modelica Association, standard System Structure and Parameterization (SSP), https:\/\/ssp-standard.org

== Exemples

Inspecter la composition « controlled drivetrain » fournie

``````matlab
ssp = [modulepath('nflow_fmi', 'root'), '/examples/ControlledDrivetrain.ssp'];
info = NFlow.sspInfo(ssp);
disp(info.name);
disp({info.components.name});
disp(numel(info.connections));
``````

Aller-retour d'une composition : SSP -\> diagramme -\> SSP

``````matlab
ssp = [modulepath('nflow_fmi', 'root'), '/examples/ControlledDrivetrain.ssp'];
work = [tempdir(), 'ssp_roundtrip'];
mkdir(work);
nflowFile = NFlow.sspImport(ssp, work);
outSsp = NFlow.sspExportDiagram(nflowFile, [work, filesep, 'RoundTrip.ssp']);
info = NFlow.sspInfo(outSsp);
disp({info.components.name});
``````


== Voir aussi

#nlink(<nflow_engine:sim>)[sim];, #nlink(<nflow_fmi:fmiCoSimulate>)[fmiCoSimulate];, #nlink(<nflow_fmi:fmiInfo>)[fmiInfo];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [NFlow.sspExportDiagram : remettre un diagramme de blocs FMU dans une archive SSP ; NFlow.writeSsv exporte les valeurs de paramètres (aller-retour SSV)],
)

// Auteur: Allan CORNET
