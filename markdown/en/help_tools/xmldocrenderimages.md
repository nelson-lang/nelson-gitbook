# xmldocrenderimages

Render the example images of Nelson help files.

## 📝 Syntax

- xmldocrenderimages()
- xmldocrenderimages(module_name)
- xmldocrenderimages(module_name, language)
- xmldocrenderimages(module_name, language, force)
- xmldocrenderimages(module_name, [], force)
- xmldocrenderimages([], [], force)

## 📥 Input argument

- module_name - a string: module name (module must be loaded). An empty numeric value [] selects every module that has help files.
- language - a string: language of the help files, for example 'en_US' or 'fr_FR'. An empty value [] selects every available language.
- force - a logical: when true, every image is rendered again, even one that is already up to date. Default: false.

## 📄 Description

<b>xmldocrenderimages</b> runs the examples of the help files that declare an image with <code>example_item_img</code> and <code>generate="true"</code>, and saves the resulting figure next to the XML file.

An image is rendered when it is missing, empty, or older than its XML file. Use <code>force</code> to render it again in every case.

Each example runs in a separate <code>nelson-adv-cli</code> process with a 120 second timeout, several at a time. A failed example is retried up to five times before an error is raised.

Without argument, the images of every module are rendered for every available language. The function sets the language of the session while it works and restores it when done.

## 💡 Examples

Render the missing or outdated images of one module in the current language set.

```matlab
xmldocrenderimages('graphics');
```

Render every image of every module in every language, even the ones already up to date.

```matlab
xmldocrenderimages([], [], true);
```

## 🔗 See also

[buildhelp](../help_tools/buildhelp.md), [xmldocchecker](../help_tools/xmldocchecker.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
