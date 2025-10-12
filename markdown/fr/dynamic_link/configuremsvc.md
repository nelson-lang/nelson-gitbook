# configuremsvc

Configurer Nelson pour utiliser Visual Studio comme compilateur par défaut

## Syntaxe

- [res, message] = configuremsvc()

## Argument de sortie

- res - un booléen : true si Visual Studio a été trouvé
- message - une chaîne : vide si Visual Studio a été trouvé, sinon un message d'erreur.

## Description

<p>Par défaut, Nelson n'a pas de compilateur C/C++ défini sous Windows.</p>

<p>Sur les autres plateformes, on suppose qu'un compilateur C/C++ est disponible et l'appel de cette fonction n'est pas requis.</p>

<p>Sous Windows, appelez une fois configuremsvc si vous souhaitez utiliser Visual Studio comme compilateur par défaut.</p>

<p>Après chaque mise à jour de Visual Studio, il pourra être nécessaire d'appeler de nouveau configuremsvc.</p>

## Exemple

```matlab
configuremsvc()
```

## Voir aussi

[Supported C/C++ compilers](../dynamic_link/2_supported_compilers.md), [havecompiler](../dynamic_link/havecompiler.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
