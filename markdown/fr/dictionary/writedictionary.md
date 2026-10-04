# writedictionary

Ecrit un dictionnaire dans un fichier.

## 📝 Syntaxe

- writedictionary(d, filename)
- writedictionary(d, filename, Name, Value)

## 📥 Argument d'entrée

- d - scalaire : objet dictionnaire configure.
- filename - scalaire texte : nom du fichier de destination.

## 📄 Description

<b>writedictionary(d, filename)</b> ecrit le dictionnaire configure <b>d</b> dans un fichier JSON.

Les cles du dictionnaire sont ecrites comme noms de membres de l'objet JSON. Les cles doivent etre des scalaires texte, numeriques ou logiques. Les valeurs peuvent etre des scalaires, tableaux, cellules, structures ou tableaux de structures lorsqu'elles peuvent etre representees comme valeurs JSON.

<b>writedictionary(d, filename, Name, Value)</b> personnalise l'ecriture. Les options supportees sont :

- <b>FileType :</b> type de fichier. Les valeurs supportees sont <code>'auto'</code> et <code>'json'</code>. Seuls les fichiers dictionnaire JSON sont actuellement supportes.
- <b>PrettyPrint :</b> scalaire logique. Si vrai, ecrit un JSON indente. La valeur par defaut est <code>true</code>.
- <b>PreserveInfAndNaN :</b> scalaire logique. Si vrai, ecrit les jetons <code>NaN</code>, <code>Infinity</code> et <code>-Infinity</code> pour les valeurs numeriques non finies. La valeur par defaut est <code>true</code>.

La persistance MAT et NH5 des variables dictionnaire est geree par <b>savemat</b>/<b>loadmat</b> et <b>savenh5</b>/<b>loadnh5</b>.

## 💡 Exemples

Ecriture puis lecture d'un dictionnaire JSON.

```matlab
filename = [tempdir(), 'products.json'];
d = dictionary(["apple", "banana"], [1.2, 2.3]);
writedictionary(d, filename);
r = readdictionary(filename)
```

Ecriture de valeurs heterogenes.

```matlab
filename = [tempdir(), 'mixed_dictionary.json'];
d = dictionary(["vector", "data"], {[1 NaN Inf], struct('name', "Nelson")});
writedictionary(d, filename, 'PrettyPrint', false);
r = readdictionary(filename)
```

## 🔗 Voir aussi

[readdictionary](../dictionary/readdictionary.md), [dictionary](../dictionary/dictionary.md), [savenh5](../hdf5/savenh5.md), [savemat](../matio/savemat.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
