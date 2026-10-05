# time

Renvoie l'heure actuelle en secondes ou en nanosecondes depuis l'époque (epoch).

## 📝 Syntaxe

- t\_s = time()
- t\_s = time('s')
- t\_ns = time('ns')

## 📤 Argument de sortie

- t\_s - un double : valeur du temps courant en secondes depuis l'époque (epoch).
- t\_ns - un entier non signé 64 bits : valeur du temps courant en nanosecondes depuis l'époque (epoch).

## 📄 Description


<b>time</b> renvoie le temps courant en secondes ou en nanosecondes depuis l'époque (epoch). 

L'époque est référencée à 00:00:00 UTC (Temps Universel Coordonné) du 1er janvier 1970.

## 💡 Exemple



```matlab
t1=time()
sleep(10)
t2 = time()
t2 - t1

```


## 🔗 Voir aussi

[tic](../../time/7_timers/tic.md), [sleep](../../time/7_timers/sleep.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
