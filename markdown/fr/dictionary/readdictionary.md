# readdictionary

Lit un dictionnaire depuis un fichier.

## 📝 Syntaxe

- d = readdictionary(filename)
- d = readdictionary(filename, Name, Value)

## 📥 Argument d'entrée

- filename - scalaire texte : nom du fichier source.

## 📤 Argument de sortie

- d - scalaire : objet dictionnaire.

## 📄 Description


<b>d = readdictionary(filename)</b> lit un objet JSON depuis <b>filename</b> et retourne un dictionnaire. 

Les noms des membres de l'objet JSON deviennent des cles string du dictionnaire. Les valeurs sont converties en valeurs Nelson. Les tableaux JSON sont decodes comme cellules colonnes. Si les valeurs JSON ont des types differents ou des tailles non scalaires, le type des valeurs du dictionnaire est <code>cell</code>. 

<b>d = readdictionary(filename, Name, Value)</b> personnalise la lecture. Les options supportees sont : 

- <b>FileType :</b> type de fichier. Les valeurs supportees sont <code>'auto'</code> et <code>'json'</code>. Seuls les fichiers dictionnaire JSON sont actuellement supportes. 
- <b>ValueType :</b> type cible utilise pour convertir les valeurs decodees. 
- <b>AllowTrailingCommas :</b> scalaire logique. Si vrai, les virgules finales dans les objets JSON sont acceptees. La valeur par defaut est <code>true</code>. 
- <b>AllowComments :</b> scalaire logique. Si vrai, les commentaires de style JavaScript sont ignores avant l'analyse. La valeur par defaut est <code>true</code>. 
- <b>AllowInfAndNaN :</b> scalaire logique. Si vrai, les jetons <code>NaN</code>, <code>Infinity</code>, <code>Inf</code>, <code>-Infinity</code> et <code>-Inf</code> sont acceptes. La valeur par defaut est <code>true</code>. 
- <b>DateLocale :</b> accepte pour compatibilite. 

<b>DictionaryNodeName</b> et <b>DictionarySelector</b> sont acceptes comme noms d'option, mais ils ne sont pas supportes pour les fichiers dictionnaire JSON.

## 💡 Exemples

Lecture d'un dictionnaire ecrit en JSON.

```matlab
filename = [tempdir(), 'products.json'];
d = dictionary(["apple", "banana"], [1.2, 2.3]);
writedictionary(d, filename);
r = readdictionary(filename)
```
Lecture avec un type explicite.

```matlab
filename = [tempdir(), 'counts.json'];
filewrite(filename, '{"a": 1, "b": 2}');
d = readdictionary(filename, 'ValueType', 'single')
```


## 🔗 Voir aussi

[writedictionary](../dictionary/writedictionary.md), [dictionary](../dictionary/dictionary.md), [loadnh5](../hdf5/loadnh5.md), [loadmat](../matio/loadmat.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
