# modelicaToFmu

Compile un modèle Modelica en FMU avec OpenModelica.

## 📝 Syntaxe

- fmu = modelicaToFmu(model)
- fmu = modelicaToFmu(model, modelName)
- fmu = modelicaToFmu(model, modelName, name, value)

## 📥 Argument d'entrée

- model - une chaîne : le chemin d'un fichier <b>.mo</b>, ou du code source Modelica en ligne.
- modelName - une chaîne : la classe Modelica à construire. Optionnel ; s'il est omis, c'est le nom de base du fichier <b>.mo</b> (entrée fichier) ou il est analysé depuis la première déclaration model / block / class / package (source en ligne).
- name, value - paires d'options : <b>'FmiVersion'</b> (<b>'2.0'</b> par défaut, ou <b>'3.0'</b>), <b>'FmuType'</b> (<b>'cs'</b> par défaut co-simulation, <b>'me'</b>, ou <b>'me_cs'</b>), <b>'Libraries'</b> (une chaîne ou un tableau de cellules de fichiers <b>.mo</b> supplémentaires à charger), <b>'Rebuild'</b> (<b>false</b> par défaut ; <b>true</b> ignore le cache).

## 📤 Argument de sortie

- fmu - le chemin du fichier <b>.fmu</b> produit.

## 📄 Description

<b>modelicaToFmu</b> compile un modèle Modelica en <b>unité de maquette fonctionnelle</b> (FMU) à l'aide d'un compilateur <b>OpenModelica</b> installé et renvoie le chemin de la <b>.fmu</b> produite. C'est la moitié « compilation » du pont Modelica de nflow : un bloc <b>modelica</b> l'appelle pour que la FMU résultante soit simulée via le chemin FMI de nflow.

Le résultat est mis en cache dans le répertoire temporaire, indexé par une empreinte de la source, du nom de modèle, de la version d'OpenModelica et des options FMU, de sorte qu'un modèle inchangé n'est compilé qu'une fois.

Pour qu'une variable Modelica devienne un port de sortie exploitable après import, déclarez-la <b>output</b> (par exemple <b>output Real vC;</b>) ; une variable ordinaire est exportée avec la causalité <b>local</b>.

Deux erreurs typées peuvent être levées. <b>Nelson:nflow_fmi:modelicaUnavailable</b> lorsqu'OpenModelica est absent ou incapable d'exporter une FMU (la construction est bloquée) ; vérifiez l'installation avec <b>modelicaInfo</b> et définissez-la avec <b>modelicaConfigure</b>. <b>Nelson:nflow_fmi:modelicaCompileFailed</b> lorsqu'<b>omc</b> s'est exécuté sans produire la FMU ; le message contient les diagnostics d'OpenModelica.

## 💡 Exemples

Compiler un modèle du premier ordre en ligne.

```matlab
src = sprintf('model FO\n  output Real x(start = 1.0);\nequation\n  der(x) = -x;\nend FO;\n');
fmu = modelicaToFmu(src);
info = fmiInfo(fmu)
```

Compiler un modèle depuis un fichier .mo.

```matlab
moFile = [modulepath('nflow_fmi'), '/examples/modelica/RLC.mo'];
fmu = modelicaToFmu(moFile, 'RLC')
```

## 🔗 Voir aussi

[modelicaInfo](../nflow_fmi/modelicaInfo.md), [modelicaConfigure](../nflow_fmi/modelicaConfigure.md), [fmiInfo](../nflow_fmi/fmiInfo.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
