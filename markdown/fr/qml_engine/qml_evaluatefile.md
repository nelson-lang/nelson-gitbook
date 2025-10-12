# qml_evaluatefile

Évalue un fichier JS.

## Syntaxe

- r = qml_evaluatefile(filename)

## Argument d'entrée

- filename - une chaîne : nom de fichier JS.

## Argument de sortie

- r - a double, logical, int ou string.

## Description

<p>Évalue un fichier JS.</p>

<p>Si la valeur retournée ne peut pas être convertie en type de base, elle sera convertie en chaîne.</p>

## Exemple

```matlab
test_file = [tempdir() , '/example_qml_evaluatefile.js'];
f = fopen(test_file, 'wt');
fwrite(f, 'a = 2 + 4');
fclose(f);
qml_evaluatefile(test_file)
```

## Voir aussi

[qml_evaluatestring](../qml_engine/qml_evaluatestring.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
