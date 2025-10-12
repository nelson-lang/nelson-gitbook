# lookup

Trouver la valeur dans le dictionnaire par clé.

## Syntaxe

- value = lookup(d, key)
- value = lookup(d, key, 'FallbackValue', fallback)

## Argument d'entrée

- d - scalaire : objet dictionnaire.
- key - le type de key doit correspondre ou être convertible au type de données des clés dans d.
- fallback - scalaire : valeur de secours

## Argument de sortie

- value - value.

## Description

<p>
            value = lookup(d, key) récupère la valeur associée à la clé donnée dans le dictionnaire d.</p>

<p>Si la clé n'existe pas, une erreur est levée.</p>

<p>
                value = lookup(d, key) est équivalent à value = d[key].</p>

<p>
                    value = lookup(d, key, 'FallbackValue', fallback) spécifie une valeur de secours à renvoyer si la clé n'est pas trouvée dans d.</p>

<p>
                        lookup ne valide la valeur de secours que si elle est nécessaire. Une erreur n'est levée que si la clé n'est pas trouvée et qu'aucune valeur de secours valide n'est fournie.</p>

## Exemple

```matlab
names = ["Apple" "Banana" "Kiwi"];
wheels = [1 2 3];
d = dictionary(wheels, names)
v = lookup(d,[3,5], 'FallbackValue', "Orange")
```

## Voir aussi

[dictionary](../dictionary/dictionary.md), [remove](../dictionary/remove.md), [insert](../dictionary/insert.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.5.0   | version initiale |

## Auteur

Allan CORNET
