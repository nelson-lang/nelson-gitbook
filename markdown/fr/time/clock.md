# clock

Renvoie la date et l'heure locales actuelles sous forme d'un vecteur date.

## Syntaxe

- v = clock()

## Argument de sortie

- v - un vecteur : [année, mois, jour, heures, minutes, secondes].

## Description

<p>
            calendar() renvoie le calendrier du mois courant.</p>

<p>Le vecteur date contient les champs suivants :</p>

<p>année</p>

<p>mois [1, 12]</p>

<p>jours [1, 31]</p>

<p>heures [0, 23]</p>

<p>minutes [0, 59]</p>

<p>secondes [0, 61]</p>

<p>secondes : le champ peut avoir une partie fractionnaire après la virgule pour une précision étendue.</p>

<p>Pour mesurer la durée d'un événement, utilisez les fonctions tic et toc plutôt que clock.</p>

<p>La fonction clock se base sur l'heure système et peut donc ne pas être fiable pour des comparaisons temporelles précises.</p>

## Exemple

```matlab
c = clock()
fix(c)
```

## Voir aussi

[tic](../time/tic.md), [toc](../time/toc.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
