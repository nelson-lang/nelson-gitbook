# xmlread

Lire un fichier XML comme objet document

## 📝 Syntaxe

- doc = xmlread(filename)
- [doc, parser] = xmlread(filename)
- doc = xmlread(filename, name, value)

## 📥 Argument d'entrée

- filename - une chaîne : chemin vers le fichier XML.
- name, value - paires optionnelles : 'AllowDoctype' ou 'XMLEngine'.

## 📤 Argument de sortie

- doc - un objet xmlDocument Nelson.
- parser - un emplacement vide conservé pour la compatibilité du parseur.

## 📄 Description

xmlread analyse un fichier XML et retourne un objet xmlDocument Nelson utilisable avec xmlwrite ou xslt.

L'objet fournit aussi une petite couche d'accès de style DOM : getDocumentElement, getElementsByTagName, getTagName, getNodeName, getTextContent, getAttribute, hasAttribute, getLength et item.

L'objet retourné n'est pas une implémentation DOM externe complète. La deuxième sortie optionnelle est actuellement un emplacement de parseur vide.

## 💡 Exemple

Lire un document XML et accéder à son contenu avec des méthodes de style DOM.

```matlab
xml_filename = [tempdir(), 'xmlread_books.xml'];
xml_text = ['<catalog>', ...
            '<book id="b1"><title>Numerical Methods</title><year>2026</year></book>', ...
            '<book id="b2"><title>Signal Processing</title><year>2025</year></book>', ...
            '</catalog>'];
filewrite(xml_filename, xml_text);
doc = xmlread(xml_filename);
root = doc.getDocumentElement();
root_name = root.getTagName()
books = doc.getElementsByTagName('book');
count = books.getLength()
first_book = books.item(0);
book_id = first_book.getAttribute('id')
book_text = first_book.getTextContent()
xmlwrite(doc)
```

## 🔗 Voir aussi

[xmlwrite](../xml/xmlwrite.md), [readstruct](../xml/readstruct.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
