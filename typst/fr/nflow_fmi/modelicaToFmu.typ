#import "nelson_help.typ": *

= modelicaToFmu <nflow_fmi:modelicaToFmu>

Compile un modèle Modelica en FMU avec OpenModelica.

== Syntaxe

- #raw("fmu = modelicaToFmu(model)");
- #raw("fmu = modelicaToFmu(model, modelName)");
- #raw("fmu = modelicaToFmu(model, modelName, name, value)");

== Argument d'entrée

/ model: une chaîne : le chemin d'un fichier #strong[.mo];, ou du code source Modelica en ligne.
/ modelName: une chaîne : la classe Modelica à construire. Optionnel ; s'il est omis, c'est le nom de base du fichier #strong[.mo]; (entrée fichier) ou il est analysé depuis la première déclaration model \/ block \/ class \/ package (source en ligne).
/ name, value: paires d'options : #strong['FmiVersion']; (#strong['2.0']; par défaut, ou #strong['3.0'];), #strong['FmuType']; (#strong['cs']; par défaut co-simulation, #strong['me'];, ou #strong['me\_cs'];), #strong['Libraries']; (une chaîne ou un tableau de cellules de fichiers #strong[.mo]; supplémentaires à charger), #strong['Rebuild']; (#strong[false]; par défaut ; #strong[true]; ignore le cache).

== Argument de sortie

/ fmu: le chemin du fichier #strong[.fmu]; produit.

== Description

#strong[modelicaToFmu]; compile un modèle Modelica en #strong[unité de maquette fonctionnelle]; (FMU) à l'aide d'un compilateur #strong[OpenModelica]; installé et renvoie le chemin de la #strong[.fmu]; produite. C'est la moitié « compilation » du pont Modelica de nflow : un bloc #strong[modelica]; l'appelle pour que la FMU résultante soit simulée via le chemin FMI de nflow.

 Le résultat est mis en cache dans le répertoire temporaire, indexé par une empreinte de la source, du nom de modèle, de la version d'OpenModelica et des options FMU, de sorte qu'un modèle inchangé n'est compilé qu'une fois.

 Pour qu'une variable Modelica devienne un port de sortie exploitable après import, déclarez-la #strong[output]; (par exemple #strong[output Real vC;];) ; une variable ordinaire est exportée avec la causalité #strong[local];.

 Deux erreurs typées peuvent être levées. #strong[Nelson:nflow\_fmi:modelicaUnavailable]; lorsqu'OpenModelica est absent ou incapable d'exporter une FMU (la construction est bloquée) ; vérifiez l'installation avec #strong[modelicaInfo]; et définissez-la avec #strong[modelicaConfigure];. #strong[Nelson:nflow\_fmi:modelicaCompileFailed]; lorsqu'#strong[omc]; s'est exécuté sans produire la FMU ; le message contient les diagnostics d'OpenModelica.


== Exemples

Compiler un modèle du premier ordre en ligne.

``````matlab
src = sprintf('model FO\n  output Real x(start = 1.0);\nequation\n  der(x) = -x;\nend FO;\n');
fmu = modelicaToFmu(src);
info = fmiInfo(fmu)
``````

Compiler un modèle depuis un fichier .mo.

``````matlab
moFile = [modulepath('nflow_fmi'), '/examples/modelica/RLC.mo'];
fmu = modelicaToFmu(moFile, 'RLC')
``````


== Voir aussi

#nlink(<nflow_fmi:modelicaInfo>)[modelicaInfo];, #nlink(<nflow_fmi:modelicaConfigure>)[modelicaConfigure];, #nlink(<nflow_fmi:fmiInfo>)[fmiInfo];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
