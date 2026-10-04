# NFlow.exportfmu

Exporte un modele nflow en FMU source FMI 3.0 Co-Simulation.

## 📝 Syntaxe

- fmuPath = NFlow.exportfmu(modelFile)
- fmuPath = NFlow.exportfmu(modelFile, destinationDirectory)

## 📥 Argument d'entrée

- modelFile - une chaine : chemin du fichier .nflow.
- destinationDirectory - une chaine : repertoire de destination. Defaut : le repertoire du modele.

## 📤 Argument de sortie

- fmuPath - une chaine : chemin complet de l'archive .fmu generee.

## 📄 Description

<b>NFlow.exportfmu</b> genere le modele en C via le pipeline de generation partage (memes gates et diagnostics que <b>nflow_codegenerate</b>, passes interpreteur incluses, donc les ilots acausaux lineaires s'exportent aussi), l'enveloppe d'une interface FMI 3.0 Co-Simulation, et empaquete <code>modelDescription.xml</code> plus les sources C dans un FMU source <code><model>.fmu</code>.

Les label sources externes deviennent des entrees FMU et les label sinks externes des sorties FMU. Seuls les signaux Float64 sont supportes a la frontiere du FMU ; les constructions conditionnelles au-dela des gates abaisses et les blocs FMU / nelsonFunction sont rejetes avec un message type.

## 💡 Exemple

Exporter un modele et recuperer le chemin de l'archive.

```matlab
% fmu = NFlow.exportfmu('C:/models/lowpass.nflow', tempdir());
```

## 🔗 Voir aussi

[nflow_codegenerate](../nflow_engine/nflow_codegenerate.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
