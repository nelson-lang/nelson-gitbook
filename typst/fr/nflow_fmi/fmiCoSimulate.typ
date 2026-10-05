#import "nelson_help.typ": *

= fmiCoSimulate <nflow_fmi:fmiCoSimulate>

Exécute une co-simulation à pas fixe d'une FMU FMI 2.0 ou 3.0.

== Syntaxe

- #raw("result = fmiCoSimulate(fmu, tStop)");
- #raw("result = fmiCoSimulate(fmu, tStop, dt)");
- #raw("result = fmiCoSimulate(fmu, tStop, dt, inputs)");

== Argument d'entrée

/ fmu: une chaîne de caractères : le chemin d'une archive #strong[.fmu];, ou d'un répertoire de FMU déjà extrait. La FMU doit fournir l'interface de co-simulation (voir #strong[fmiInfo];).
/ tStop: un scalaire réel strictement positif : l'instant d'arrêt de la simulation, dans l'unité de temps de la FMU (secondes). La simulation débute à l'instant #strong[0];.
/ dt: un scalaire réel strictement positif optionnel : le pas de communication. En son absence il vaut par défaut #strong[tStop \/ 100]; (cent pas). Il est ramené à #strong[tStop]; s'il est plus grand.
/ inputs: une structure scalaire optionnelle dont les noms de champs sont des variables d'entrée #strong[Float64]; de la FMU et les valeurs les valeurs constantes maintenues sur ces entrées pendant toute l'exécution, par exemple #strong[struct('u', 2.5)];. Les entrées non listées conservent leurs valeurs initiales.

== Argument de sortie

/ result: une structure scalaire contenant la trajectoire enregistrée, avec les champs #strong[time];, #strong[outputNames]; et #strong[outputs]; décrits ci-dessous.

== Description

#strong[fmiCoSimulate]; exécute une #strong[co-simulation]; d'une #strong[unité de maquette fonctionnelle]; (FMU) conforme au standard #strong[FMI 2.0]; ou #strong[3.0]; et renvoie les valeurs de chaque sortie #strong[Float64]; à chaque point de communication.

 La FMU est instanciée, initialisée entre les instants #strong[0]; et #strong[tStop];, puis avancée avec un pas de communication fixe #strong[dt];. Au début de chaque pas les sorties #strong[Float64]; courantes sont enregistrées ; la FMU est ensuite avancée d'un pas. La boucle s'arrête à #strong[tStop];, ou plus tôt si la FMU demande l'arrêt. La FMU est toujours terminée et libérée avant le retour de la fonction, y compris en cas d'erreur.

 Aucune entrée externe n'est appliquée : les paramètres et les entrées de la FMU conservent les valeurs initiales déclarées dans sa description de modèle. La fonction reproduit donc la réponse libre du modèle tel qu'empaqueté. L'application d'entrées personnalisées n'est pas encore prise en charge par ce point d'entrée.

 L'argument #strong[fmu]; accepte aussi bien une archive #strong[.fmu]; qu'un répertoire déjà extrait. Une archive #strong[.fmu]; est décompressée avec un extracteur durci contre le ZIP-slip dans un répertoire temporaire neuf, supprimé automatiquement au retour de la fonction ; les entrées comportant un chemin absolu, une lettre de lecteur ou une remontée #strong[..]; sont rejetées.

 La structure renvoyée #strong[result]; comporte les champs suivants :

 

#table(
  columns: 3,
  [Champ], [Taille], [Détails], 
  [time], [N x 1], [les points de communication, débutant à #strong[0]; et strictement croissants par pas de #strong[dt]; (le dernier point peut être plus court lorsque la FMU s'arrête prématurément).], 
  [outputNames], [1 x nOut], [un tableau de cellules des noms des variables de sortie #strong[Float64];, dans l'ordre de déclaration.], 
  [outputs], [N x nOut], [les valeurs de sortie enregistrées ; la colonne #strong[j]; est la trajectoire de #strong[outputNames{j}];, la ligne #strong[i]; correspond à #strong[time(i)];.], 
)
 Le nombre de lignes #strong[N]; vaut #strong[floor(tStop \/ dt) + 1]; pour une exécution qui se termine à #strong[tStop];. Lorsque la FMU ne déclare aucune sortie #strong[Float64];, #strong[outputNames]; est vide et #strong[outputs]; possède zéro colonne, tandis que #strong[time]; est tout de même renvoyé.

 Utilisez d'abord #strong[fmiInfo]; pour inspecter les variables et confirmer la présence de l'interface de co-simulation. Une erreur est levée lorsque #strong[tStop]; n'est pas strictement positif, lorsque la FMU ne gère pas la co-simulation, ou lorsqu'un appel FMI échoue.


== Exemples

Exécuter une co-simulation avec le pas par défaut.

``````matlab
result = fmiCoSimulate('VanDerPol.fmu', 20)
``````

Exécuter avec un pas de communication explicite et tracer les sorties.

``````matlab
r = fmiCoSimulate('VanDerPol.fmu', 20, 0.01);
plot(r.time, r.outputs);
legend(r.outputNames);
xlabel('temps');
title('Sorties de co-simulation FMU');
``````

Extraire une sortie nommée du résultat.

``````matlab
r = fmiCoSimulate('VanDerPol.fmu', 20, 0.01);
col = find(strcmp(r.outputNames, 'x0'));
x0 = r.outputs(:, col);
``````

Piloter une entrée de FMU avec une valeur constante (FMU Feedthrough livrée).

``````matlab
fmu = [modulepath('nflow_fmi', 'root'), '/examples/Feedthrough.fmu'];
r = fmiCoSimulate(fmu, 2, 0.1, struct('Float64_continuous_input', 2.5));
col = find(strcmp(r.outputNames, 'Float64_continuous_output'));
r.outputs(end, col)
``````


== Voir aussi

#nlink(<nflow_fmi:fmiInfo>)[fmiInfo];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
