#import "nelson_help.typ": *

= Parquet

Le module Parquet fournit le support des fichiers locaux Apache Parquet.

 Il permet de lire et d'ecrire des tables orientees colonnes, d'obtenir les metadonnees d'un fichier et de traiter un ou plusieurs fichiers Parquet avec un datastore et des filtres de lignes.

 Les variables de table prises en charge incluent les valeurs logiques, les types entiers, les nombres flottants simple et double precision, le texte, les valeurs datetime, les durees, les tables imbriquees stockees comme colonnes struct, et les cellules homogenes de vecteurs primitifs stockees comme colonnes list.

== Functions

- #nlink(<parquet:class_ParquetDatastore>)[nelson.io.datastore.ParquetDatastore]: Objet datastore pour fichiers Parquet.
- #nlink(<parquet:class_ParquetInfo>)[nelson.io.parquet.ParquetInfo]: Objet de metadonnees retourne par parquetinfo.
- #nlink(<parquet:class_RowFilter>)[nelson.io.RowFilter]: Objet qui stocke une expression de filtre de lignes.
- #nlink(<parquet:parquetDatastore>)[parquetDatastore]: Creer un datastore pour un ou plusieurs fichiers Parquet.
- #nlink(<parquet:parquetinfo>)[parquetinfo]: Retourner les metadonnees d'un fichier Parquet.
- #nlink(<parquet:parquetread>)[parquetread]: Lire des donnees de table depuis un fichier Parquet.
- #nlink(<parquet:parquetwrite>)[parquetwrite]: Ecrire une table dans un fichier Parquet.
- #nlink(<parquet:rowfilter>)[rowfilter]: Creer une expression de filtre de lignes.


#nested[
#pagebreak(weak: true)
#include "class_ParquetDatastore.typ"
#pagebreak(weak: true)
#include "class_ParquetInfo.typ"
#pagebreak(weak: true)
#include "class_RowFilter.typ"
#pagebreak(weak: true)
#include "parquetDatastore.typ"
#pagebreak(weak: true)
#include "parquetinfo.typ"
#pagebreak(weak: true)
#include "parquetread.typ"
#pagebreak(weak: true)
#include "parquetwrite.typ"
#pagebreak(weak: true)
#include "rowfilter.typ"
]
