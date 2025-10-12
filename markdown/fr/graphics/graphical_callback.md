# Gestion des interruptions de callback dans Nelson

## Description

<p>Vous pouvez affecter une fonction de rappel (callback) à une propriété de callback en utilisant l'une des méthodes suivantes :</p>

<p>
            Handle de fonction : Utilisez cette approche lorsque votre callback n'a pas besoin d'arguments supplémentaires.</p>

<p>
            Cellule : Idéal lorsque votre callback nécessite des arguments supplémentaires. La cellule doit inclure le handle de fonction comme premier élément, suivi des arguments d'entrée.</p>

<p>
            Fonction anonyme : Cette méthode convient pour un code de callback simple ou si vous souhaitez réutiliser une fonction qui n'est pas exclusivement utilisée comme callback.</p>

<p>
            Vecteur de caractères ou chaîne scalaire contenant des commandes.</p>

<p></p>

<p>Nelson permet de contrôler si une fonction de callback peut être interrompue pendant son exécution. Dans certains cas, autoriser les interruptions peut être souhaitable, par exemple pour permettre à l'utilisateur d'arrêter une boucle d'animation via un callback interrompant. Cependant, dans des scénarios où l'ordre d'exécution des callbacks est crucial, il peut être nécessaire d'empêcher les interruptions pour garantir le comportement attendu, comme assurer la réactivité dans des applications qui réagissent aux mouvements du pointeur.</p>

<p></p>

<p>Comportement d'interruption des callbacks :</p>

<p></p>

<p>Les callbacks sont exécutés dans l'ordre où ils sont mis en file d'attente. Lorsqu'un callback est en cours d'exécution et qu'une autre action utilisateur déclenche un second callback, ce second callback tente d'interrompre le premier. Le premier est appelé « callback en cours d'exécution », le second « callback interrompant ».</p>

<p></p>

<p>Dans certains cas, des commandes spécifiques dans le callback en cours invitent Nelson à traiter les callbacks en attente dans la file.</p>

<p>Lorsque Nelson rencontre l'une de ces commandes comme drawnow, figure, waitfor ou pause, il évalue si une interruption doit avoir lieu.</p>

<p></p>

<p>Pas d'interruption : Si le callback en cours n'inclut aucune de ces commandes, Nelson termine ce callback avant d'exécuter le callback interrompant.</p>

<p></p>

<p>Conditions d'interruption : Si le callback en cours inclut l'une de ces commandes, le comportement dépend de la propriété Interruptible de l'objet propriétaire du callback :</p>

<p></p>

<p>Si Interruptible est à 'on', Nelson autorise l'interruption. Le callback en cours est mis en pause, le callback interrompant est exécuté, puis Nelson reprend l'exécution du callback initial.</p>

<p>Si Interruptible est à 'off', l'interruption est bloquée. La propriété BusyAction du callback interrompant détermine alors la suite :</p>

<p>Si BusyAction est 'queue', le callback interrompant sera exécuté après la fin du callback en cours.</p>

<p>Si BusyAction est 'cancel', le callback interrompant est ignoré et non exécuté.</p>

<p>Par défaut, la propriété Interruptible est à 'on' et BusyAction à 'queue'.</p>

<p></p>

<p>À noter : certains callbacks, notamment DeleteFcn, CloseRequestFcn et SizeChangedFcn, interrompent le callback en cours quel que soit la valeur de la propriété Interruptible.</p>

## Exemple

Démo uicontrol Interruptible

```matlab

addpath([modulepath('graphics','root'), '/examples/uicontrol'])
edit uicontrol_demo_interruptible
uicontrol_demo_interruptible

```

<img src="uicontrol_6.png" align="middle"/>

## Voir aussi

[uicontrol](../graphics/uicontrol.md), [drawnow](../graphics/drawnow.md), [waitfor](../graphics/waitfor.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
