# indexation de résultat temporaire

indexer directement le résultat d'un appel de fonction ou d'une expression.

## 📝 Syntaxe

- f().field
- f()(index)
- f(){index}
- (expression).field
- (expression)(index)
- (expression){index}

## 📄 Description


L'indexation de résultat temporaire applique directement une indexation par champ, parenthèses ou accolades au résultat d'un appel de fonction ou d'une expression. 

Cette syntaxe évite de créer une variable intermédiaire lorsqu'un seul champ ou élément est nécessaire. 

Les formes supportées incluent l'indexation par point, l'indexation de tableau avec parenthèses et l'indexation de contenu de cellule avec accolades.

## 💡 Exemples

Indexer le résultat d'un appel de fonction.

```matlab

names = dir(nelsonroot())(3).name;
secondCharacter = dir(nelsonroot())(3).name(2);

```
Indexer des valeurs temporaires littérales.

```matlab

x = [10 20 30](2);
y = {10, 20}{2};
z = 'abc'(2);

```


## 🔗 Voir aussi

[function](../interpreter/function.md), [name=value](../interpreter/name_value_syntax.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
