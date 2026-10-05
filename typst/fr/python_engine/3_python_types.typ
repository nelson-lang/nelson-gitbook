#import "nelson_help.typ": *

= Types Python - Nelson <python_engine:3_python_types>

Gestion des données entre Python et Nelson.

== Description

#strong[Gestion des données renvoyées par les fonctions Python :];

 

#table(
  columns: 2,
  [Type renvoyé par Python (affiché en Python)], [Type correspondant dans Nelson (scalaire)], 
  [bool], [logical], 
  [complex], [double (complex)], 
  [float], [double], 
)
 

 #strong[Conversion explicite des types Python vers Nelson :];

 

 

#table(
  columns: 2,
  [Types\/Protocoles Python représentés dans Nelson], [Méthodes de conversion Nelson], 
  [py.str], [char, string], 
  [py.int], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64], 
  [py.long], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64], 
  [py.float], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64], 
  [py.bool], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical], 
  [py.bytes], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical], 
  [py.bytearray], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical], 
  [py.array.array], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64], 
  [py.memoryview], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64], 
  [py.numpy.ndarray], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64], 
  [py.list], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical, string, cell], 
  [py.tuple], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical, string, cell], 
  [py.dict], [struct], 
  [py.pandas.DataFrame], [table], 
  [py.pandas.Series], [table (une seule colonne)], 
)
 

 Un #strong[py.pandas.DataFrame]; est converti avec la fonction #strong[table]; : chaque colonne du DataFrame devient une variable de la table et conserve son nom ; les colonnes numériques deviennent des colonnes numériques Nelson et les colonnes textuelles deviennent des colonnes #strong[string]; Nelson. Un index non par défaut est déplacé dans une variable #strong[index]; en tête, tandis qu'un #strong[RangeIndex]; par défaut est ignoré. Une #strong[py.pandas.Series]; devient une table avec une seule variable nommée d'après la Series (une Series sans nom utilise l'étiquette de colonne #strong[0];). Les étiquettes de colonnes qui ne sont pas des noms de variables Nelson valides sont rendues valides, et les étiquettes d'origine sont conservées dans #strong[VariableDescriptions]; de la table. Les colonnes datetime sont converties en leur représentation textuelle (ISO). Ces conversions nécessitent que le paquet #strong[pandas]; soit installé dans l'environnement Python.

 

 #strong[Passer un scalaire Nelson à Python :];

 

 

#table(
  columns: 2,
  [Type scalaire Nelson en entrée], [Type Python], 
  [NaN], [float("nan")], 
  [Inf], [float("inf")], 
  [double (réel)], [py.float], 
  [single (réel)], [py.float], 
  [double (complexe)], [py.complex], 
  [single (complexe)], [py.complex], 
  [int8], [py.int], 
  [uint8], [py.int], 
  [int16], [py.int], 
  [uint16], [py.int], 
  [int32], [py.int], 
  [uint32], [py.int], 
  [int64], [py.int], 
  [uint64], [py.int], 
  [string scalar], [py.str], 
  [char vector], [py.str], 
  [logical], [py.bool], 
  [struct], [py.dict], 
  [table], [py.pandas.DataFrame (py.dict si pandas n'est pas installé)], 
)
 

 Une #strong[table]; Nelson passée à Python est implicitement convertie en #strong[py.pandas.DataFrame]; : les noms de variables de la table deviennent les colonnes du DataFrame et les noms de lignes, lorsqu'ils existent, deviennent l'index du DataFrame. Lorsque le paquet #strong[pandas]; n'est pas disponible, la table est convertie en un dictionnaire avec les champs #strong[data]; et #strong[Properties];.

 

 #strong[Passer un vecteur 1-by-N Nelson à Python :];

 

 

#table(
  columns: 2,
  [Type vecteur 1-by-N Nelson], [Type Python], 
  [double (réel)], [array.array('d')], 
  [single (réel)], [array.array('f')], 
  [int8], [array.array('b')], 
  [uint8], [array.array('B')], 
  [int16], [array.array('h')], 
  [uint16], [array.array('H')], 
  [int32], [array.array('i')], 
  [uint32], [array.array('I')], 
  [int64], [array.array('q')], 
  [uint64], [array.array('Q')], 
  [double], [memoryview], 
  [single], [memoryview], 
  [logical], [memoryview], 
  [char vector], [str], 
  [string scalar], [str], 
  [cell vector], [tuple], 
)
 

 #strong[Passer des matrices 2D et tableaux ND à Python :];

 Le langage Python propose un protocole d'accès aux buffers mémoire, semblable aux données stockées dans les tableaux Nelson.

 Nelson intègre ce protocole de buffer Python pour ses tableaux.


== Exemples

``````matlab
R = pyrun('', "A", 'A', magic(3))
R.double()
``````

dictionary conversion nelson -- python

``````matlab
wheels = [1 2 3];
names = ["Monocycle" "Bicycle" "Tricycle"];
d = dictionary(wheels, names)
R = pyrun("A = d", "A", 'd', d)
dictionary(R)

``````


== Voir aussi

#nlink(<python_engine:pyrun>)[pyrun];, #nlink(<dictionary:dictionary>)[dictionary];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.4.0], [version initiale],
)

// Auteur: Allan CORNET
