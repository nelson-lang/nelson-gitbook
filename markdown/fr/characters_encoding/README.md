# Encodage des caractères

Le module d'encodage des caractères fournit des outils pour convertir entre les représentations d'octets natifs et les caractères Unicode.

Il permet aux scripts d'interpréter et de manipuler correctement le texte dans divers encodages, assurant la compatibilité entre différentes plateformes et locales.

Le module inclut également des fonctionnalités pour détecter les jeux de caractères qui correspondent à une entrée donnée, facilitant le traitement fiable du texte et l'internationalisation.

## Functions

- [native2unicode](native2unicode.md) - Convertit la représentation d'octets en caractères unicode
- [nativecharset](nativecharset.md) - Trouve tous les jeux de caractères qui semblent cohérents avec l'entrée
- [unicode2native](unicode2native.md) - Convertit la représentation de caractères unicode en octets
