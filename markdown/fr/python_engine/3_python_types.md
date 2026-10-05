# Types Python - Nelson

Gestion des données entre Python et Nelson.

## 📄 Description


<b>Gestion des données renvoyées par les fonctions Python :</b> 

| Type renvoyé par Python (affiché en Python) | Type correspondant dans Nelson (scalaire) | 
| --- | --- | 
| bool | logical | 
| complex | double (complex) | 
| float | double | 

 

 

<b>Conversion explicite des types Python vers Nelson :</b> 

 
| Types/Protocoles Python représentés dans Nelson | Méthodes de conversion Nelson | 
| --- | --- | 
| py.str | char, string | 
| py.int | double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64 | 
| py.long | double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64 | 
| py.float | double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64 | 
| py.bool | double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical | 
| py.bytes | double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical | 
| py.bytearray | double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical | 
| py.array.array | double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64 | 
| py.memoryview | double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64 | 
| py.numpy.ndarray | double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64 | 
| py.list | double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical, string, cell | 
| py.tuple | double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical, string, cell | 
| py.dict | struct | 
| py.pandas.DataFrame | table | 
| py.pandas.Series | table (une seule colonne) | 

 

 

Un <b>py.pandas.DataFrame</b> est converti avec la fonction <b>table</b> : chaque colonne du DataFrame devient une variable de la table et conserve son nom ; les colonnes numériques deviennent des colonnes numériques Nelson et les colonnes textuelles deviennent des colonnes <b>string</b> Nelson. Un index non par défaut est déplacé dans une variable <b>index</b> en tête, tandis qu'un <b>RangeIndex</b> par défaut est ignoré. Une <b>py.pandas.Series</b> devient une table avec une seule variable nommée d'après la Series (une Series sans nom utilise l'étiquette de colonne <b>0</b>). Les étiquettes de colonnes qui ne sont pas des noms de variables Nelson valides sont rendues valides, et les étiquettes d'origine sont conservées dans <b>VariableDescriptions</b> de la table. Les colonnes datetime sont converties en leur représentation textuelle (ISO). Ces conversions nécessitent que le paquet <b>pandas</b> soit installé dans l'environnement Python. 

 

<b>Passer un scalaire Nelson à Python :</b> 

 
| Type scalaire Nelson en entrée | Type Python | 
| --- | --- | 
| NaN | float("nan") | 
| Inf | float("inf") | 
| double (réel) | py.float | 
| single (réel) | py.float | 
| double (complexe) | py.complex | 
| single (complexe) | py.complex | 
| int8 | py.int | 
| uint8 | py.int | 
| int16 | py.int | 
| uint16 | py.int | 
| int32 | py.int | 
| uint32 | py.int | 
| int64 | py.int | 
| uint64 | py.int | 
| string scalar | py.str | 
| char vector | py.str | 
| logical | py.bool | 
| struct | py.dict | 
| table | py.pandas.DataFrame (py.dict si pandas n'est pas installé) | 

 

 

Une <b>table</b> Nelson passée à Python est implicitement convertie en <b>py.pandas.DataFrame</b> : les noms de variables de la table deviennent les colonnes du DataFrame et les noms de lignes, lorsqu'ils existent, deviennent l'index du DataFrame. Lorsque le paquet <b>pandas</b> n'est pas disponible, la table est convertie en un dictionnaire avec les champs <b>data</b> et <b>Properties</b>. 

 

<b>Passer un vecteur 1-by-N Nelson à Python :</b> 

 
| Type vecteur 1-by-N Nelson | Type Python | 
| --- | --- | 
| double (réel) | array.array('d') | 
| single (réel) | array.array('f') | 
| int8 | array.array('b') | 
| uint8 | array.array('B') | 
| int16 | array.array('h') | 
| uint16 | array.array('H') | 
| int32 | array.array('i') | 
| uint32 | array.array('I') | 
| int64 | array.array('q') | 
| uint64 | array.array('Q') | 
| double | memoryview | 
| single | memoryview | 
| logical | memoryview | 
| char vector | str | 
| string scalar | str | 
| cell vector | tuple | 

 

 

<b>Passer des matrices 2D et tableaux ND à Python :</b> 

Le langage Python propose un protocole d'accès aux buffers mémoire, semblable aux données stockées dans les tableaux Nelson. 

Nelson intègre ce protocole de buffer Python pour ses tableaux.

## 💡 Exemples



```matlab
R = pyrun('', "A", 'A', magic(3))
R.double()
```
dictionary conversion nelson -- python

```matlab
wheels = [1 2 3];
names = ["Monocycle" "Bicycle" "Tricycle"];
d = dictionary(wheels, names)
R = pyrun("A = d", "A", 'd', d)
dictionary(R)

```


## 🔗 Voir aussi

[pyrun](../python_engine/pyrun.md), [dictionary](../dictionary/dictionary.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.4.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
