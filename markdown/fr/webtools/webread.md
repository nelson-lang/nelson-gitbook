# webread

Lire des données depuis un service web RESTful vers une variable Nelson

## Syntaxe

- var = webread(url)
- var = webread(url, name1, value1, ... , nameN, valueN)
- var = webread(url, name1, value1, ... , nameN, valueN, options)

## Argument d'entrée

- url - chaîne : URL d'un service web.
- name1, value1, ... , nameN, valueN - Arguments Nom-Valeur.
- options - objet weboptions.

## Argument de sortie

- var - variable : contenu provenant du web.

## Description

<p>webread() lit du contenu depuis le web et le charge dans une variable Nelson.</p>

## Exemples

```matlab
url = 'https://httpbin.org/get';
res = webread(url,weboptions('ContentType','json'));

```

More demos

```matlab
edit([modulepath('webtools'),'/examples/webread_demo_1.m'])

```

Use function_handle with weboptions and webread

```matlab
edit([modulepath('webtools'),'/examples/webread_demo_2.m'])

```

Read data from National Agricultural Statistics Service

```matlab
edit([modulepath('webtools'),'/examples/webread_demo_3.m'])

```

## Voir aussi

[weboptions](../webtools/weboptions.md), [websave](../webtools/websave.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
