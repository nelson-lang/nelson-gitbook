# tic

Démarre un chronomètre.

## 📝 Syntaxe

- tic()
- t = tic()

## 📤 Argument de sortie

- t - un entier non signé 64 bits : valeur du compteur interne de la fonction tic.

## 📄 Description

La séquence de commandes<b>tic(); commands ; t = toc()</b> renvoie le nombre de secondes nécessaires à l'exécution des commandes.

Les appels consécutifs à <b>tic</b> écrasent le minuteur interne de tic.

## 💡 Exemple

```matlab
tic()
sleep(10)
toc()

tic()
sleep(10)
t = toc()

```

## 🔗 Voir aussi

[toc](../time/toc.md), [sleep](../time/sleep.md), [time](../time/time.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
