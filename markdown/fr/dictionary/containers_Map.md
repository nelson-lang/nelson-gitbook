# containers.Map

Objet qui associe des cles uniques a des valeurs.

## 📝 Syntaxe

- m = containers.Map()
- m = containers.Map(keys, values)
- m = containers.Map('KeyType', keyType, 'ValueType', valueType)

## 📥 Argument d'entrée

- keys - tableau de cellules de vecteurs de caracteres, vecteur de caracteres, tableau string ou tableau numerique.
- values - scalaire, tableau ou tableau de cellules de valeurs.
- keyType - vecteur de caracteres ou scalaire string qui indique le type des cles : char, double, single, int32, uint32, int64 ou uint64.
- valueType - vecteur de caracteres ou scalaire string qui indique le type des valeurs : any, char, double, single, int32, uint32, int64, uint64, logical, int8 ou uint8.

## 📤 Argument de sortie

- m - objet scalaire containers.Map.

## 📄 Description


<b>m = containers.Map()</b> cree une map vide avec des cles de type vecteur de caracteres et des valeurs de tout type. 

<b>m = containers.Map(keys, values)</b> cree une map scalaire a partir de paires cle-valeur. Les cles sont uniques dans la map obtenue. Si une meme cle apparait plusieurs fois pendant la construction, seule la derniere valeur est conservee. 

Si <b>values</b> est scalaire et que plusieurs cles sont fournies, cette valeur scalaire est affectee a chaque cle. Sinon, le nombre de cles et de valeurs doit correspondre. 

<b>m = containers.Map('KeyType', keyType, 'ValueType', valueType)</b> cree une map vide typee. Les proprietes <b>Count</b>, <b>KeyType</b> et <b>ValueType</b> sont en lecture seule. 

Quand les cles sont fournies sous forme de tableaux logical, int8, uint8, int16 ou uint16, le type de cle deduit est <b>double</b>. 

Les valeurs sont lues avec l'indexation par parentheses, par exemple <b>m('name')</b>. L'affectation <b>m(key) = value</b> insere une nouvelle entree ou remplace une valeur existante. La methode <b>remove</b> supprime des entrees. 

Les methodes <b>keys</b> et <b>values</b> retournent des tableaux de cellules. La methode <b>isKey</b> verifie la presence de cles et accepte une cle scalaire ou un tableau de cellules de cles.

## 💡 Exemples

Creer et interroger une map.

```matlab
m = containers.Map({'apple', 'banana'}, [10 20])
m('apple')
m('banana') = 25
isKey(m, {'apple', 'kiwi'})
keys(m)
values(m)
```
Creer une map typee.

```matlab
m = containers.Map('KeyType', 'char', 'ValueType', 'any')
m('payload') = struct('name', 'Nelson', 'value', [1 2 3])
m.Count
m.ValueType
```
Utiliser des cles numeriques.

```matlab
m = containers.Map([1 2 3], {'one', 'two', 'three'})
m(2)
remove(m, 1)
m.Count
```


## 🔗 Voir aussi

[dictionary](../dictionary/dictionary.md), [keys](../dictionary/keys.md), [values](../dictionary/values.md), [isKey](../dictionary/isKey.md), [remove](../dictionary/remove.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | classe containers.Map |

<!--
## 👤 Auteur

Allan CORNET
-->
