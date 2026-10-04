# Parquet

Le module Parquet fournit le support des fichiers locaux Apache Parquet.

Il permet de lire et d'ecrire des tables orientees colonnes, d'obtenir les metadonnees d'un fichier et de traiter un ou plusieurs fichiers Parquet avec un datastore et des filtres de lignes.

Les variables de table prises en charge incluent les valeurs logiques, les types entiers, les nombres flottants simple et double precision, le texte, les valeurs datetime, les durees, les tables imbriquees stockees comme colonnes struct, et les cellules homogenes de vecteurs primitifs stockees comme colonnes list.

## Functions

- [nelson.io.datastore.ParquetDatastore](class_ParquetDatastore.md) - Objet datastore pour fichiers Parquet.
- [nelson.io.parquet.ParquetInfo](class_ParquetInfo.md) - Objet de metadonnees retourne par parquetinfo.
- [nelson.io.RowFilter](class_RowFilter.md) - Objet qui stocke une expression de filtre de lignes.
- [parquetDatastore](parquetDatastore.md) - Creer un datastore pour un ou plusieurs fichiers Parquet.
- [parquetinfo](parquetinfo.md) - Retourner les metadonnees d'un fichier Parquet.
- [parquetread](parquetread.md) - Lire des donnees de table depuis un fichier Parquet.
- [parquetwrite](parquetwrite.md) - Ecrire une table dans un fichier Parquet.
- [rowfilter](rowfilter.md) - Creer une expression de filtre de lignes.
