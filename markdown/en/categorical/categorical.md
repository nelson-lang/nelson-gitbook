# categorical

Create a categorical array.

## 📝 Syntax

- C = categorical(A)
- C = categorical(A, valueset)
- C = categorical(A, valueset, categoryNames)
- C = categorical(..., 'Ordinal', tf)
- C = categorical(..., 'Protected', tf)

## 📥 Input argument

- A - Input values. Text, string, numeric, logical, or categorical input is accepted.
- valueset - Explicit set of input values that define categories.
- categoryNames - Names assigned to the categories defined by <b>valueset</b>.
- tf - Logical scalar that enables ordinal ordering or category protection.

## 📤 Output argument

- C - Categorical array with the same size as <b>A</b>.

## 📄 Description


<b>categorical</b> stores repeated values as integer category codes plus a category name list. 

Values that are empty text, missing strings, or not found in an explicit <b>valueset</b> become undefined categorical elements. 

Ordinal arrays use category order for relational comparisons. Ordinal arrays are protected automatically. 

<b>contains</b>, <b>startsWith</b>, <b>endsWith</b> and <b>matches</b> accept a categorical array as input: they test the category name of each element against the pattern (text, cell of text, string array or pattern object, with the optional <b>'IgnoreCase'</b> option) and return a logical array of the same size. Undefined elements return false. Each category name is tested only once. 

Concatenating a categorical array with text (<b>["z" C]</b>, <b>['z' C]</b>, <b>[{'z'} C]</b>) or <b>missing</b> converts the other operands: the result keeps the categories of the first categorical operand and adds new values in operand order; empty text and <b>missing</b> are undefined. Ordinal and protected arrays reject values that are not already categories, and other classes (numeric, logical, string arrays with several elements) are rejected.

## 💡 Examples

Create categories from text values.

```matlab
C = categorical({'red','blue','red'}); categories(C)
```
Create an ordinal categorical array with explicit category order.

```matlab
C = categorical({'low','high','mid'}, {'low','mid','high'}, 'Ordinal', true); C > 'mid'
```
Find elements whose category name matches a pattern.

```matlab
C = categorical({'winter storm','fire','Thunder Storm',''}); contains(C, "storm", 'IgnoreCase', true)
```


## 🔗 See also

[categories](../categorical/categories.md), [iscategorical](../categorical/iscategorical.md), [isundefined](../categorical/isundefined.md), [isordinal](../categorical/isordinal.md), [isprotected](../categorical/isprotected.md), [contains](../string/3_find_replace/contains.md), [startsWith](../string/3_find_replace/startsWith.md), [endsWith](../string/3_find_replace/endsWith.md), [matches](../string/8_compare_text/matches.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
