# toc

Lire le chronomètre (stopwatch).

## Syntaxe

- toc()
- t = toc()
- toc(timer_value)
- t = toc(timer_value)

## Argument d'entrée

- timer_value - un entier non signé 64 bits : valeur du compteur interne utilisée par la fonction tic.

## Argument de sortie

- t - un double : nombre de secondes écoulées depuis le dernier appel à tic (précision de l'ordre de la milliseconde).

## Description

<p>La séquence de commandes tic(); commands ; t = toc()renvoie le nombre de secondes nécessaires à l'exécution des commandes.</p>

<p>Les appels consécutifs à la fonction toc sans argument renvoient le temps écoulé depuis le tic le plus récent.</p>

<p>Les appels consécutifs à toc avec la même valeur timer_value renvoient le temps écoulé depuis l'appel à tic correspondant à cette valeur.</p>

## Exemple

```matlab
tic()
sleep(10)
toc()
sleep(10)
toc()


```

## Voir aussi

[tic](../time/datenum.md), [clock](../time/datevec.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
