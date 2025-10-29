# cputime

Renvoie le temps CPU utilisé par votre session Nelson.

## 📝 Syntaxe

- t = cputime()

## 📤 Argument de sortie

- t - un double : temps CPU en secondes.

## 📄 Description

<b>cputime()</b> renvoie le temps CPU utilisé par la session Nelson.

Pour mesurer les performances, il est préférable d'utiliser les fonctions tic et toc.

## 💡 Exemple

```matlab
t1 = cputime;
sleep(10);
t2 = cputime;
t2 - t1

% versus tic toc
tic()
sleep(10);
toc()
```

## 🔗 Voir aussi

[tic](../time/tic.md), [toc](../time/toc.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
