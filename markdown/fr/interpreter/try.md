# try

instruction try/catch.

## Syntaxe

- try, statements_1, catch, statements_2, end
- try, statements_1, catch exception, statements_2, end

## Description

<p>
            Les instructions try et catch sont utilisées pour la gestion des erreurs et le contrôle dans les fichiers.</p>

<p>
                exception est un objet MException qui permet d'identifier l'erreur.</p>

<p>Le bloc catch assigne l'objet exception courant à la variable dans exception.</p>

## Exemples

try/catch dans un script

```matlab
try
error('an error')
catch
  disp('error catched')
end
```

try/catch dans un script

```matlab
try
error('an error')
catch ME
  ME
end
```

## Voir aussi

[run](../core/run.md), [execstr](../core/execstr.md), [MException](../error_manager/MException.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
