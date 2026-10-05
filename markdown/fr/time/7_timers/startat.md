# startat

Demarrer un timer a une date et une heure specifiees.

## 📝 Syntaxe

- startat(t, firingTime)
- startat(t, year, month, day)
- startat(t, year, month, day, hour, minute, second)

## 📥 Argument d'entrée

- t - Objet timer ou tableau d'objets timer.
- firingTime - Heure de demarrage sous forme de numero de date serie, vecteur de date, valeur datetime, vecteur de caracteres ou chaine scalaire.
- year, month, day, hour, minute, second - Composants de date et d'heure. Les entrees hour, minute et second sont optionnelles.

## 📄 Description


<b>startat</b> demarre le timer a une date et une heure futures. L'heure de demarrage doit etre dans le futur et a au plus 25 jours de l'heure courante. 

Pour un tableau de timers, l'heure de demarrage peut etre scalaire ou contenir une heure de demarrage pour chaque timer du tableau.

## 💡 Exemples

Demarrer un timer environ deux secondes apres l'instant courant.

```matlab
t = timer('TimerFcn', @(src, event) disp('future timer fired'));
startat(t, now() + 2 / 86400);
wait(t);
delete(t);
```
Utiliser les composants de date et d'heure pour planifier un timer.

```matlab
t = timer('TimerFcn', @(src, event) disp('scheduled'));
v = datevec(now() + 2 / 86400);
startat(t, v(1), v(2), v(3), v(4), v(5), v(6));
wait(t);
delete(t);
```


## 🔗 Voir aussi

[timer](../../time/7_timers/timer.md), [start](../../time/7_timers/start.md), [wait](../../time/7_timers/wait.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
