#import "nelson_help.typ": *

= fmiInfo <nflow_fmi:fmiInfo>

Lit la description de modèle d'une FMU FMI 2.0 ou 3.0.

== Syntaxe

- #raw("info = fmiInfo(fmu)");

== Argument d'entrée

/ fmu: une chaîne de caractères : le chemin d'une archive #strong[.fmu];, ou d'un répertoire de FMU déjà extrait (un dossier contenant un fichier #strong[modelDescription.xml]; à sa racine).

== Argument de sortie

/ info: une structure scalaire décrivant la FMU, avec les champs listés ci-dessous.

== Description

#strong[fmiInfo]; analyse le fichier #strong[modelDescription.xml]; d'une #strong[unité de maquette fonctionnelle]; (FMU) conforme au standard #strong[FMI 2.0]; ou #strong[3.0]; et renvoie ses métadonnées sous forme de structure Nelson. Aucune simulation n'est effectuée : seule la description statique est lue, ce qui rend l'appel peu coûteux et sûr pour inspecter une FMU avant de préparer une exécution.

 L'argument #strong[fmu]; peut être fourni sous deux formes :

 

- le chemin d'une archive #strong[.fmu];. L'archive (un conteneur ZIP) est décompressée avec un extracteur durci contre le ZIP-slip dans un répertoire temporaire neuf, supprimé automatiquement avant le retour de #strong[fmiInfo];. Les entrées comportant un chemin absolu, une lettre de lecteur ou une remontée #strong[..]; sont rejetées.


- le chemin d'un répertoire de FMU déjà extrait. Dans ce cas rien n'est décompressé et le répertoire est lu sur place.

 La structure renvoyée #strong[info]; comporte les champs suivants :

 

#table(
  columns: 3,
  [Champ], [Classe], [Détails], 
  [modelIdentifier], [char], [l'identifiant de modèle C déclaré par la FMU (utilisé pour localiser son binaire).], 
  [fmiVersion], [char], [la chaîne de version FMI renvoyée par la FMU (par exemple #strong[2.0]; ou #strong[3.0];).], 
  [coSimulation], [logical], [#strong[true]; lorsque la FMU fournit l'interface de co-simulation (requise par #strong[fmiCoSimulate];).], 
  [modelExchange], [logical], [#strong[true]; lorsque la FMU fournit l'interface Model Exchange.], 
  [scheduledExecution], [logical], [#strong[true]; lorsque la FMU fournit l'interface Scheduled Execution.], 
  [names], [cell de char], [les noms des variables scalaires déclarées par la FMU, dans l'ordre de déclaration.], 
  [valueReferences], [double], [la référence de valeur de chaque variable (le descripteur numérique utilisé par les appels get\/set de FMI).], 
  [causalities], [cell de char], [la causalité de chaque variable : #strong[parameter];, #strong[calculatedParameter];, #strong[input];, #strong[output];, #strong[local];, #strong[independent]; ou #strong[structuralParameter];.], 
  [dataTypes], [cell de char], [le type de données déclaré de chaque variable (par exemple #strong[Float64];, #strong[Int32];, #strong[Boolean];, #strong[String];).], 
  [descriptions], [cell de char], [la description de chaque variable (vide lorsqu'aucune n'est déclarée).], 
  [startValues], [double], [la valeur initiale Float64 de chaque variable, ou #strong[NaN]; lorsque la variable n'en déclare aucune.], 
)
 Les quatre champs de variables (#strong[names];, #strong[valueReferences];, #strong[causalities];, #strong[dataTypes];) sont alignés élément par élément : la #strong[k];-ième entrée de chacun décrit la même variable. Pour lister les sorties d'une FMU, sélectionnez les entrées dont la causalité vaut #strong[output]; ; ce sont exactement les signaux enregistrés par #strong[fmiCoSimulate];.

 Une erreur est levée lorsque le chemin n'existe pas, lorsque l'archive ne peut pas être extraite, ou lorsque la FMU ne contient pas de fichier #strong[modelDescription.xml]; lisible.


== Exemples

Lire la description de modèle d'une archive de FMU.

``````matlab
info = fmiInfo('VanDerPol.fmu')
``````

Lister uniquement les variables de sortie de la FMU.

``````matlab
info = fmiInfo('VanDerPol.fmu');
isOutput = strcmp(info.causalities, 'output');
outputs = info.names(isOutput)
``````

Vérifier qu'une FMU gère la co-simulation avant de l'exécuter.

``````matlab
info = fmiInfo('VanDerPol.fmu');
if ~info.coSimulation
  error('Cette FMU ne fournit pas l''interface de co-simulation.');
end
``````


== Voir aussi

#nlink(<nflow_fmi:fmiCoSimulate>)[fmiCoSimulate];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
