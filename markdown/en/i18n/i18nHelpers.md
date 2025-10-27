# i18nHelpers

Internationalization (i18n) utility functions

## 📝 Syntax

- i18nHelpers('convert', potFile, jsonFile)
- i18nHelpers('merge', jsonFile1, jsonFile2)
- i18nHelpers('sort', jsonFileA, jsonFileB)

## 📥 Input argument

- potFile - String: Path to the source .po/.pot translation template file
- jsonFile - String: Path to JSON translation file destination
- jsonFile1 - String: Path to the source JSON translation file
- jsonFile2 - String: Path to the destination JSON translation file
- jsonFileA - String: Path to the source JSON file to sort
- jsonFileB - String: Path to the sorted JSON file

## 📄 Description

<b>i18nHelpers</b> provides essential utility functions for managing internationalization files. The main functions include:

- <b>'convert'</b>: Converts a .po/.pot translation template file into JSON format for easier manipulation.

- <b>'merge'</b>: Merges two JSON translation files. The entries from <code>jsonFile1</code> are added to <code>jsonFile2</code>, and entries exclusive to <code>jsonFile2</code> are removed.

- <b>'sort'</b>: Sorts and organizes entries in a JSON translation file. <code>jsonFileA</code> and <code>jsonFileB</code> may refer to the same file if in-place sorting is desired.

This utility is intended for internal use and may be updated over time.

## 🔗 See also

[setlanguage](../localization/setlanguage.md), [getlanguage](../localization/getlanguage.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.10.0  | Initial version |

## 👤 Author

Allan CORNET
