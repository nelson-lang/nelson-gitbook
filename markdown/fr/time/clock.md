# clock

Renvoie la date et l'heure locales actuelles sous forme d'un vecteur date.

## 📝 Syntaxe

- v = clock()

## 📤 Argument de sortie

- v - un vecteur : [année, mois, jour, heures, minutes, secondes].

## 📄 Description

<b>calendar()</b> renvoie le calendrier du mois courant.

Le vecteur date contient les champs suivants :

année

mois [1, 12]

jours [1, 31]

heures [0, 23]

minutes [0, 59]

secondes [0, 61]

secondes : le champ peut avoir une partie fractionnaire après la virgule pour une précision étendue.

Pour mesurer la durée d'un événement, utilisez les fonctions tic et toc plutôt que clock.

La fonction clock se base sur l'heure système et peut donc ne pas être fiable pour des comparaisons temporelles précises.

## 💡 Exemple

```matlab
c = clock()
fix(c)
```

## 🔗 Voir aussi

[tic](../time/tic.md), [toc](../time/toc.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
