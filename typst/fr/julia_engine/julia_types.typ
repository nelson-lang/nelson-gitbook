#import "nelson_help.typ": *

= Julia Nelson types <julia_engine:julia_types>

Gestion des données entre Julia et Nelson.

== Description

#strong[Gestion des données retournées par les fonctions Julia :];

 Cette documentation explique comment les données sont gérées et converties entre Julia et Nelson. Elle couvre les conversions de scalaires, vecteurs et matrices, des exemples d'utilisation et des ressources associées.

 

#table(
  columns: 2,
  [Julia return type, as shown in Julia], [Corresponding Nelson type (scalar)], 
  [Bool], [logical], 
  [Complex{Float64}], [double (complex)], 
  [Complex{Float32}], [single (complex)], 
  [Float64], [double], 
  [Float32], [single], 
  [Int8], [int8], 
  [Int16], [int16], 
  [Int32], [int32], 
  [Int64], [int64], 
  [UInt8], [uint8], 
  [UInt16], [uint16], 
  [UInt32], [uint32], 
  [UInt64], [uint64], 
  [String], [string], 
)
 

 Vecteurs et matrices d'un type Nelson renvoyés comme matrices dans Julia.

 #strong[cell]; converti en #strong[Array{Any}];.

 #strong[struct]; converti en #strong[Dict{Any, Any}];.

 une matrice de struct convertie en #strong[Matrix{Dict}];.

 #strong[dictionary]; converti en #strong[Dict{Any, Any}];.

 #strong[table]; convertie en #strong[DataFrames.DataFrame]; lorsque le paquet DataFrames.jl est disponible (les noms de variables deviennent les noms de colonnes) ; sinon elle est convertie en #strong[Dict{Any, Any}];.

 Un #strong[DataFrames.DataFrame]; est converti en #strong[table]; Nelson avec #strong[table(df)]; : les colonnes numériques conservent leur type numérique, une colonne Bool devient une colonne #strong[logical];, une colonne textuelle devient une colonne #strong[string];, une colonne numérique contenant #strong[missing]; devient une colonne #strong[double]; avec #strong[NaN];, et une colonne textuelle contenant #strong[missing]; devient une colonne #strong[string]; avec #strong[\<missing\>];.

 

 Assurez-vous que toutes les données transmises entre Julia et Nelson respectent les correspondances de types décrites ci-dessus pour des conversions sans heurts.

 Pour des cas d'utilisation avancés, tels que la gestion de types Julia personnalisés ou de structures de données profondément imbriquées, un prétraitement supplémentaire en Julia ou Nelson peut être nécessaire.


== Exemples

``````matlab
R = jlrun('', "A", 'A', magic(3))
R.double()
``````

``````matlab
names = ["Unicycle" "Bicycle" "Tricycle"];
wheels = [1 2 3];
d = dictionary(wheels,names)
R = jlrun('', "A", 'A', d)

``````


== Voir aussi

#nlink(<julia_engine:jlrun>)[jlrun];, #nlink(<julia_engine:jlrunfile>)[jlrunfile];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.12.0], [version initiale],
)

// Auteur: Allan CORNET
