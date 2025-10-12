# dictionary

Objet qui associe des clés uniques à des valeurs.

## Syntaxe

- d = dictionary()
- d = dictionary(d1)
- d = dictionary(keys, values)
- d = dictionary(key1, value1, ... , keyN, valueN)

## Argument d'entrée

- d1 - un dictionnaire ou un objet py.dict.
- keys - scalaire ou tableau
- values - scalaire, tableau ou tableau cellulaire
- key1, value1, ... , keyN, valueN - Paires clé-valeur

## Argument de sortie

- d - scalaire : un objet dictionnaire.

## Description

<p>
            d = dictionary() : Cette commande initialise un dictionnaire vide sans clés ni valeurs.</p>

<p>Au départ, le dictionnaire n'a pas de types de données spécifiques assignés à ses clés ou valeurs. Une fois des entrées ajoutées, les types de clés et de valeurs sont déterminés à partir de ces entrées.</p>

<p></p>

<p>
                d = dictionary(keys, values) : Crée un dictionnaire en utilisant les clés et valeurs fournies.</p>

<p>Le dictionnaire résultant est un objet scalaire 1-by-1. Si une clé apparaît plusieurs fois, seule la dernière valeur correspondante est conservée. Si le paramètre values est un scalaire, chaque clé reçoit cette valeur. Quand keys et values sont des tableaux, ils doivent avoir des tailles compatibles, produisant des paires clé-valeur correspondantes.</p>

<p></p>

<p>Les dictionnaires sont typés selon leurs entrées. Toutes les clés doivent partager le même type de données, et toutes les valeurs doivent partager un type cohérent distinct. Si une nouvelle entrée contient des parties qui ne correspondent pas aux types existants, Nelson tentera de les convertir. Les clés et valeurs peuvent avoir des types différents, et les vecteurs de caractères en lignes sont convertis en scalaires string.</p>

<p></p>

<p>
                    d = dictionary(key1, value1, ... , keyN, valueN) : Cette syntaxe crée un dictionnaire avec les paires clé-valeur spécifiées.</p>

<p>Si une clé est répétée, seule la dernière paire clé-valeur pour cette clé est conservée.</p>

<p>Suppression d'une entrée dans un dictionnaire :</p>

<p>
                        d(keys) = [] : Cette commande supprime l'entrée associée à la clé spécifiée du dictionnaire.</p>

<p></p>

<p>Assignation de valeurs aux entrées :</p>

<p>
                            d(keys) = newValues : Cette commande assigne les éléments de newValues aux entrées spécifiées par les clés correspondantes.</p>

<p>Si une clé spécifiée n'existe pas dans le dictionnaire, une nouvelle entrée est créée. Si une clé apparaît plusieurs fois, seule la dernière valeur assignée est conservée. Assigner une nouvelle valeur à une clé existante écrase sa valeur précédente.</p>

<p></p>

<p>Recherche d'une valeur :</p>

<p>
                                bvalue = d(keys) : Cette commande récupère la valeur correspondant aux clés spécifiées du dictionnaire.</p>

<p></p>

<p>Stockage de plusieurs types de données dans un dictionnaire :</p>

<p>
                                    value = d{keys} récupère la valeur associée à keys et renvoie le contenu de la cellule. Si keys est un tableau, une liste séparée par des virgules des valeurs correspondantes est renvoyée. Une erreur est levée si les valeurs du dictionnaire sont configurées vers un type autre que cell.</p>

<p>
                                        d{keys} = values assigne des cellules contenant les éléments de values aux entrées spécifiées par les keys correspondantes. Une erreur est levée si les valeurs du dictionnaire sont configurées vers un type autre que cell.</p>

<p></p>

## Exemples

```matlab
d = dictionary()
d('apple') = 1
d('banana') = 2
d('kiwi') = 3
d('banana') = []

```

```matlab
Values = {{'a','b'},["ff", "cc"],struct,[1 2 3 4]}
Keys = ["letters" "words" "a structure" "numeric array"]
d = dictionary(Keys, Values)
d{"numeric array"}
d{"a new entry"} = 'table'
```

dictionary conversion nelson -- python

```matlab
wheels = [1 2 3];
names = ["Monocycle" "Bicycle" "Tricycle"];
d = dictionary(wheels, names)
R = pyrun("A = d", "A", 'd', d)
dictionary(R)

```

## Voir aussi

[lookup](../dictionary/lookup.md), [remove](../dictionary/remove.md), [insert](../dictionary/insert.md), [keyMatch](../dictionary/keyMatch.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.5.0   | version initiale |

## Auteur

Allan CORNET
