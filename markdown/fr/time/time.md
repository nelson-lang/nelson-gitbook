# time

Renvoie l'heure actuelle en secondes ou en nanosecondes depuis l'époque (epoch).

## 📝 Syntaxe

- t_s = time()
- t_s = time('s')
- t_ns = time('ns')

## 📤 Argument de sortie

- t_s - un double : valeur du temps courant en secondes depuis l'époque (epoch).
- t_ns - un entier non signé 64 bits : valeur du temps courant en nanosecondes depuis l'époque (epoch).

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

[tic](../time/tic.md), [sleep](../time/sleep.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
