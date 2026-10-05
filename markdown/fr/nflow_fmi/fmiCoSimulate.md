# fmiCoSimulate

Exécute une co-simulation à pas fixe d'une FMU FMI 2.0 ou 3.0.

## 📝 Syntaxe

- result = fmiCoSimulate(fmu, tStop)
- result = fmiCoSimulate(fmu, tStop, dt)
- result = fmiCoSimulate(fmu, tStop, dt, inputs)

## 📥 Argument d'entrée

- fmu - une chaîne de caractères : le chemin d'une archive <b>.fmu</b>, ou d'un répertoire de FMU déjà extrait. La FMU doit fournir l'interface de co-simulation (voir <b>fmiInfo</b>).
- tStop - un scalaire réel strictement positif : l'instant d'arrêt de la simulation, dans l'unité de temps de la FMU (secondes). La simulation débute à l'instant <b>0</b>.
- dt - un scalaire réel strictement positif optionnel : le pas de communication. En son absence il vaut par défaut <b>tStop / 100</b> (cent pas). Il est ramené à <b>tStop</b> s'il est plus grand.
- inputs - une structure scalaire optionnelle dont les noms de champs sont des variables d'entrée <b>Float64</b> de la FMU et les valeurs les valeurs constantes maintenues sur ces entrées pendant toute l'exécution, par exemple <b>struct('u', 2.5)</b>. Les entrées non listées conservent leurs valeurs initiales.

## 📤 Argument de sortie

- result - une structure scalaire contenant la trajectoire enregistrée, avec les champs <b>time</b>, <b>outputNames</b> et <b>outputs</b> décrits ci-dessous.

## 📄 Description


<b>fmiCoSimulate</b> exécute une <b>co-simulation</b> d'une <b>unité de maquette fonctionnelle</b> (FMU) conforme au standard <b>FMI 2.0</b> ou <b>3.0</b> et renvoie les valeurs de chaque sortie <b>Float64</b> à chaque point de communication. 

La FMU est instanciée, initialisée entre les instants <b>0</b> et <b>tStop</b>, puis avancée avec un pas de communication fixe <b>dt</b>. Au début de chaque pas les sorties <b>Float64</b> courantes sont enregistrées ; la FMU est ensuite avancée d'un pas. La boucle s'arrête à <b>tStop</b>, ou plus tôt si la FMU demande l'arrêt. La FMU est toujours terminée et libérée avant le retour de la fonction, y compris en cas d'erreur. 

Aucune entrée externe n'est appliquée : les paramètres et les entrées de la FMU conservent les valeurs initiales déclarées dans sa description de modèle. La fonction reproduit donc la réponse libre du modèle tel qu'empaqueté. L'application d'entrées personnalisées n'est pas encore prise en charge par ce point d'entrée. 

L'argument <b>fmu</b> accepte aussi bien une archive <b>.fmu</b> qu'un répertoire déjà extrait. Une archive <b>.fmu</b> est décompressée avec un extracteur durci contre le ZIP-slip dans un répertoire temporaire neuf, supprimé automatiquement au retour de la fonction ; les entrées comportant un chemin absolu, une lettre de lecteur ou une remontée <b>..</b> sont rejetées. 

La structure renvoyée <b>result</b> comporte les champs suivants : 

| Champ | Taille | Détails | 
| --- | --- | --- | 
| time | N x 1 | les points de communication, débutant à **0** et strictement croissants par pas de **dt** (le dernier point peut être plus court lorsque la FMU s'arrête prématurément). | 
| outputNames | 1 x nOut | un tableau de cellules des noms des variables de sortie **Float64**, dans l'ordre de déclaration. | 
| outputs | N x nOut | les valeurs de sortie enregistrées ; la colonne **j** est la trajectoire de **outputNames{j}**, la ligne **i** correspond à **time(i)**. | 

 

Le nombre de lignes <b>N</b> vaut <b>floor(tStop / dt) + 1</b> pour une exécution qui se termine à <b>tStop</b>. Lorsque la FMU ne déclare aucune sortie <b>Float64</b>, <b>outputNames</b> est vide et <b>outputs</b> possède zéro colonne, tandis que <b>time</b> est tout de même renvoyé. 

Utilisez d'abord <b>fmiInfo</b> pour inspecter les variables et confirmer la présence de l'interface de co-simulation. Une erreur est levée lorsque <b>tStop</b> n'est pas strictement positif, lorsque la FMU ne gère pas la co-simulation, ou lorsqu'un appel FMI échoue.

## 💡 Exemples

Exécuter une co-simulation avec le pas par défaut.

```matlab
result = fmiCoSimulate('VanDerPol.fmu', 20)
```
Exécuter avec un pas de communication explicite et tracer les sorties.

```matlab
r = fmiCoSimulate('VanDerPol.fmu', 20, 0.01);
plot(r.time, r.outputs);
legend(r.outputNames);
xlabel('temps');
title('Sorties de co-simulation FMU');
```
Extraire une sortie nommée du résultat.

```matlab
r = fmiCoSimulate('VanDerPol.fmu', 20, 0.01);
col = find(strcmp(r.outputNames, 'x0'));
x0 = r.outputs(:, col);
```
Piloter une entrée de FMU avec une valeur constante (FMU Feedthrough livrée).

```matlab
fmu = [modulepath('nflow_fmi', 'root'), '/examples/Feedthrough.fmu'];
r = fmiCoSimulate(fmu, 2, 0.1, struct('Float64_continuous_input', 2.5));
col = find(strcmp(r.outputNames, 'Float64_continuous_output'));
r.outputs(end, col)
```


## 🔗 Voir aussi

[fmiInfo](../nflow_fmi/fmiInfo.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
