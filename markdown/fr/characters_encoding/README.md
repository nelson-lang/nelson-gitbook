# Encodage des caracteres

Le module d'encodage des caracteres fournit des outils pour convertir entre les representations d'octets natives et les caracteres Unicode.

Il permet aux scripts de lire et manipuler du texte dans plusieurs encodages, sur differentes plateformes et locales.

Le module inclut aussi la detection des jeux de caracteres compatibles avec une entree donnee.

## Functions

- [native2unicode](native2unicode.md) - Convertit la représentation d'octets en caractères unicode
- [nativecharset](nativecharset.md) - Trouve tous les jeux de caractères qui semblent cohérents avec l'entrée
- [unicode2native](unicode2native.md) - Convertit la représentation de caractères unicode en octets
