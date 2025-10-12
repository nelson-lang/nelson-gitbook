# numeric types

À propos des types entiers et à virgule flottante.

## Description

<p>Dans Nelson, vous pouvez préciser le type de données d'un littéral numérique en utilisant un suffixe ou un spécificateur de type.</p>

<p>Voici quelques suffixes courants pour spécifier le type des littéraux numériques :</p>

<p></p>

| suffixe du littéral | type Nelson                       |
| ------------------- | --------------------------------- |
| f32                 | single (float simple précision)   |
| f64                 | double (float double précision)   |
| i8                  | int8 (entier signé 8 bits)        |
| i16                 | int16 (entier signé 16 bits)      |
| i32                 | int32 (entier signé 32 bits)      |
| i64                 | int64 (entier signé 64 bits)      |
| u8                  | uint8 (entier non signé 8 bits)   |
| u16                 | uint16 (entier non signé 16 bits) |
| u32                 | uint32 (entier non signé 32 bits) |
| u64                 | uint64 (entier non signé 64 bits) |

<p></p>

<p>i64 : pour spécifier un entier signé 64 bits, vous pouvez utiliser le suffixe i64. exemple : A = 42i64</p>

<p>f32 : pour spécifier un nombre à virgule flottante 32 bits (simple précision), vous pouvez utiliser le suffixe f32. exemple : 3.14f32</p>

<p>Ces suffixes aident Nelson à inférer le type de données correct pour le littéral.</p>

<p>Par défaut, Nelson infère automatiquement le type double et vous n'avez pas besoin de spécifier ce suffixe explicitement. exemple : A = 3.14</p>

<p>Sauf si vous avez des besoins spécifiques ou devez dissiper une ambiguïté entre types, vous n'avez souvent pas besoin de préciser explicitement le type des littéraux numériques.</p>

<p>Cependant, lorsque vous créez un tableau numérique de grands entiers dans Nelson, surtout lorsqu'ils dépassent la précision maximale représentable par double (plus grands que flintmax), Nelson stocke par défaut ces valeurs en double précision à virgule flottante.</p>

## Exemples

nombre simple explicite

```matlab

single(3.1415)
3.1415f32

```

nombre double implicite-explicite

```matlab

3.1415
3.1415f64

```

valeurs dépassant la précision maximale représentable par double

```matlab

R1 = uint64([72057594035891654 81997179153022975])
R2 = [72057594035891654u64 81997179153022975u64]

```

## Voir aussi

[double](../double/double.md), [single](../single/single.md), [int8](../integer/int8.md), [int16](../integer/int16.md), [int32](../integer/int32.md), [int64](../integer/int64.md), [uint8](../integer/uint8.md), [uint16](../integer/uint16.md), [uint32](../integer/uint32.md), [uint64](../integer/uint64.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
