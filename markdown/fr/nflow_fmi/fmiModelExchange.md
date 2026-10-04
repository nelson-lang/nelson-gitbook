# fmiModelExchange

Importe et intègre une FMU FMI 2.0 ou 3.0 Model Exchange.

## 📝 Syntaxe

- result = fmiModelExchange(fmu, tStop)
- result = fmiModelExchange(fmu, tStop, dt)

## 📥 Argument d'entrée

- fmu - une chaîne de caractères : le chemin d'une archive <b>.fmu</b>, ou d'un répertoire de FMU déjà extrait. La FMU doit fournir l'interface Model Exchange.
- tStop - un scalaire réel strictement positif : l'instant d'arrêt. La simulation débute à l'instant <b>0</b>.
- dt - un scalaire réel strictement positif optionnel : le pas d'intégration fixe. En son absence il vaut par défaut <b>tStop / 1000</b>. Le Model Exchange demande en général un pas plus fin que la co-simulation, car Nelson intègre lui-même les états.

## 📤 Argument de sortie

- result - une structure scalaire avec les champs <b>time</b> (N x 1), <b>outputNames</b> (1 x nOut) et <b>outputs</b> (N x nOut).

## 📄 Description

<b>fmiModelExchange</b> importe une <b>unité de maquette fonctionnelle</b> (FMU) conforme à l'interface <b>FMI 2.0</b> ou <b>3.0</b> <b>Model Exchange</b> et l'intègre avec le solveur de Nelson.

La différence essentielle avec <b>fmiCoSimulate</b> est de savoir qui possède le solveur. Une FMU de co-simulation contient son propre solveur et est avancée par <b>doStep</b>. Une FMU Model Exchange n'expose que les équations du modèle (dérivées des états, sorties et indicateurs d'événement) ; c'est l'outil importateur qui fournit le solveur. <b>fmiModelExchange</b> intègre les états continus de la FMU avec une méthode de Runge-Kutta d'ordre 4 à pas fixe et gère les événements d'état détectés en fin de pas (passage en mode événement, exécution du point fixe de mise à jour discrète, relecture des états continus).

Aucune entrée externe n'est appliquée : les paramètres et entrées conservent leurs valeurs initiales. Une erreur est levée lorsque la FMU ne fournit pas l'interface Model Exchange.

## 💡 Exemple

Intégrer l'oscillateur de Van der Pol comme FMU Model Exchange.

```matlab
fmu = [modulepath('nflow_fmi', 'root'), '/examples/VanDerPol.fmu'];
r = fmiModelExchange(fmu, 20, 0.01);
plot(r.time, r.outputs); legend(r.outputNames);
```

## 🔗 Voir aussi

[fmiCoSimulate](../nflow_fmi/fmiCoSimulate.md), [fmiInfo](../nflow_fmi/fmiInfo.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
