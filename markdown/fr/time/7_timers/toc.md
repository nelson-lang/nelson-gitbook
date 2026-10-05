# toc

Lire le chronomètre (stopwatch).

## 📝 Syntaxe

- toc()
- t = toc()
- toc(timer\_value)
- t = toc(timer\_value)

## 📥 Argument d'entrée

- timer\_value - un entier non signé 64 bits : valeur du compteur interne utilisée par la fonction tic.

## 📤 Argument de sortie

- t - un double : nombre de secondes écoulées depuis le dernier appel à tic (précision de l'ordre de la milliseconde).

## 📄 Description


La séquence de commandes <b>tic(); commands ; t = toc() </b> renvoie le nombre de secondes nécessaires à l'exécution des commandes. 

Les appels consécutifs à la fonction toc sans argument renvoient le temps écoulé depuis le tic le plus récent. 

Les appels consécutifs à toc avec la même valeur timer\_value renvoient le temps écoulé depuis l'appel à tic correspondant à cette valeur.

## 💡 Exemple



```matlab
tic()
sleep(10)
toc()
sleep(10)
toc()


```


## 🔗 Voir aussi

[tic](../../time/1_create_date_time_arrays/datenum.md), [clock](../../time/1_create_date_time_arrays/datevec.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
