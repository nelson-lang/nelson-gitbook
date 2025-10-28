# Julia Nelson types

Gestion des données entre Julia et Nelson.

## 📄 Description

<b>Gestion des données retournées par les fonctions Julia :</b>

Cette documentation explique comment les données sont gérées et converties entre Julia et Nelson. Elle couvre les conversions de scalaires, vecteurs et matrices, des exemples d'utilisation et des ressources associées.
| Julia return type, as shown in Julia | Corresponding Nelson type (scalar) |
| --- | --- |
| Bool | logical |
| Complex{Float64} | double (complex) |
| Complex{Float32} | single (complex) |
| Float64 | double |
| Float32 | single |
| Int8 | int8 |
| Int16 | int16 |
| Int32 | int32 |
| Int64 | int64 |
| UInt8 | uint8 |
| UInt16 | uint16 |
| UInt32 | uint32 |
| UInt64 | uint64 |
| String | string |

Vecteurs et matrices d'un type Nelson renvoyés comme matrices dans Julia.

<b>cell</b> converti en <b>Array{Any}</b>.

<b>struct</b> converti en <b>Dict{Any, Any}</b>.

une matrice de struct convertie en <b>Matrix{Dict}</b>.

<b>dictionary</b> converti en <b>Dict{Any, Any}</b>.

Assurez-vous que toutes les données transmises entre Julia et Nelson respectent les correspondances de types décrites ci-dessus pour des conversions sans heurts.

Pour des cas d'utilisation avancés, tels que la gestion de types Julia personnalisés ou de structures de données profondément imbriquées, un prétraitement supplémentaire en Julia ou Nelson peut être nécessaire.

## 💡 Exemples

```matlab
R = jlrun('', "A", 'A', magic(3))
R.double()
```

```matlab
names = ["Unicycle" "Bicycle" "Tricycle"];
wheels = [1 2 3];
d = dictionary(wheels,names)
R = jlrun('', "A", 'A', d)

```

## 🔗 Voir aussi

[jlrun](../julia_engine/jlrun.md), [jlrunfile](../julia_engine/jlrunfile.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.12.0  | version initiale |

## 👤 Auteur

Allan CORNET
