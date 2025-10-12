# pyargs

Générer des arguments nommés pour les fonctions Python.

## Syntaxe

- pyargs
- pa = pyargs(Name, Value)

## Argument d'entrée

- Name - une chaîne ou un vecteur de caractères
- Value - valeur de la variable

## Argument de sortie

- pa - objet pyargs.

## Description

<p>
            pyargs(Name, Value, ...) génère un ou plusieurs arguments nommés pour les fonctions Python.</p>

<p>En Python, un argument nommé (keyword argument) est une valeur associée à un identifiant.</p>

<p>Veillez à positionner pyargs comme dernier argument lors de l'appel d'une fonction Python.</p>

## Exemple

```matlab
pa = pyargs('A', 1)
```

## Voir aussi

[pyrun](../python_engine/pyrun.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.3.0   | version initiale |

## Auteur

Allan CORNET
