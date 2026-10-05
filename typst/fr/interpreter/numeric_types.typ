#import "nelson_help.typ": *

= numeric types <interpreter:numeric_types>

À propos des types entiers et à virgule flottante.

== Description

Dans Nelson, vous pouvez préciser le type de données d'un littéral numérique en utilisant un suffixe ou un spécificateur de type.

 Voici quelques suffixes courants pour spécifier le type des littéraux numériques :

 

#table(
  columns: 2,
  [suffixe du littéral], [type Nelson], 
  [f32], [single (float simple précision)], 
  [f64], [double (float double précision)], 
  [i8], [int8 (entier signé 8 bits)], 
  [i16], [int16 (entier signé 16 bits)], 
  [i32], [int32 (entier signé 32 bits)], 
  [i64], [int64 (entier signé 64 bits)], 
  [u8], [uint8 (entier non signé 8 bits)], 
  [u16], [uint16 (entier non signé 16 bits)], 
  [u32], [uint32 (entier non signé 32 bits)], 
  [u64], [uint64 (entier non signé 64 bits)], 
)
 

 i64 : pour spécifier un entier signé 64 bits, vous pouvez utiliser le suffixe i64. exemple : A \= 42i64

 f32 : pour spécifier un nombre à virgule flottante 32 bits (simple précision), vous pouvez utiliser le suffixe f32. exemple : 3.14f32

 Ces suffixes aident Nelson à inférer le type de données correct pour le littéral.

 Par défaut, Nelson infère automatiquement le type double et vous n'avez pas besoin de spécifier ce suffixe explicitement. exemple : A \= 3.14

 Vous pouvez aussi écrire des littéraux entiers en hexadécimal, avec le préfixe 0x ou 0X, ou en binaire, avec le préfixe 0b ou 0B. exemple : 0xFF, 0X1A, 0b1010, 0B1111

 Sans suffixe de type, la valeur est stockée dans le plus petit type entier non signé pouvant contenir tous ses chiffres, chaque chiffre hexadécimal comptant pour quatre bits et chaque chiffre binaire pour un bit. Par exemple 0xFF est un uint8, 0x100 un uint16, 0x10000 un uint32 et 0x100000000 un uint64.

 Un suffixe de type entier optionnel peut suivre les chiffres pour choisir le type exact : u8, u16, u32, u64 pour les entiers non signés et s8, s16, s32, s64 pour les entiers signés (le suffixe est insensible à la casse). Avec un suffixe signé, les chiffres sont interprétés comme un motif binaire en complément à deux, ainsi 0xFFs8 vaut -1 et 0x80s8 vaut -128.

 Un littéral comportant plus de chiffres que le type choisi ou implicite ne peut contenir, ou contenant un chiffre ou un suffixe invalide, provoque une erreur.

 Sauf si vous avez des besoins spécifiques ou devez dissiper une ambiguïté entre types, vous n'avez souvent pas besoin de préciser explicitement le type des littéraux numériques.

 Cependant, lorsque vous créez un tableau numérique de grands entiers dans Nelson, surtout lorsqu'ils dépassent la précision maximale représentable par double (plus grands que flintmax), Nelson stocke par défaut ces valeurs en double précision à virgule flottante.


== Exemples

nombre simple explicite

``````matlab

single(3.1415)
3.1415f32

``````

nombre double implicite-explicite

``````matlab

3.1415
3.1415f64

``````

valeurs dépassant la précision maximale représentable par double

``````matlab

R1 = uint64([72057594035891654 81997179153022975])
R2 = [72057594035891654u64 81997179153022975u64]

``````

littéraux entiers hexadécimaux et binaires

``````matlab

A = 0xFF
class(A)
B = 0b1010
C = 0x100000000
D = 0xFFs8

``````


== Voir aussi

#nlink(<double:double>)[double];, #nlink(<single:single>)[single];, #nlink(<integer:int8>)[int8];, #nlink(<integer:int16>)[int16];, #nlink(<integer:int32>)[int32];, #nlink(<integer:int64>)[int64];, #nlink(<integer:uint8>)[uint8];, #nlink(<integer:uint16>)[uint16];, #nlink(<integer:uint32>)[uint32];, #nlink(<integer:uint64>)[uint64];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [ajout des littéraux entiers hexadécimaux (0x) et binaires (0b)],
)

// Auteur: Allan CORNET
