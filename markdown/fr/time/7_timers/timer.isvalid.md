# timer.isvalid

Determiner quels handles de timer sont valides.

## 📝 Syntaxe

- tf = isvalid(t)

## 📥 Argument d'entrée

- t - Objet timer ou tableau d'objets timer.

## 📤 Argument de sortie

- tf - Tableau logique de meme taille que <b>t</b>. Les valeurs valent true pour les handles de timer valides et false pour les handles de timer supprimes.

## 📄 Description


<b>isvalid</b> verifie si des handles de timer referencent encore des objets timer vivants. L'appel de <b>delete</b> sur un timer invalide le handle.

## 💡 Exemple

Verifier un handle de timer avant et apres suppression.

```matlab
t = timer('TimerFcn', @(src, event) disp('timer'));
beforeDelete = isvalid(t)
delete(t);
afterDelete = isvalid(t)
```


## 🔗 Voir aussi

[timer](../../time/7_timers/timer.md), [delete](../../time/7_timers/timer.delete.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
