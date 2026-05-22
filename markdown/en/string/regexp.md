# regexp

Match regular expression.

## 📝 Syntax

- startIndex = regexp(str, expression)
- [startIndex, endIndex] = regexp(str, expression)
- out = regexp(str, expression, outkey)
- [out1, ..., outN] = regexp(str, expression, outkey1, ..., outkeyN)
- out = regexp(..., option)

## 📥 Input argument

- str - a character vector, string array, or cell array of character vectors.
- expression - a regular expression.
- outkey - 'start', 'end', 'tokenExtents', 'match', 'tokens', 'names', or 'split'.
- option - 'once', 'ignorecase', 'matchcase', 'emptymatch', 'dotexceptnewline', 'lineanchors', or 'forceCellOutput'.

## 📤 Output argument

- out - match indices, matches, tokens, named token structures, or split text.

## 📄 Description

<b>regexp</b> searches text using Perl-compatible regular expressions.

A regular expression describes a pattern rather than a literal string. Use it when the text can vary, for example when matching identifiers, dates, email addresses, numbers, tags, or alternative spellings.

A typical workflow is to identify the pieces of text that are unique, translate each piece into regular expression syntax, and then call <b>regexp</b> with the output key that returns the information you need.

By default, <b>regexp</b> returns 1-based start indices for every non-overlapping match. Matching continues after the end of the previous match. Use the <b>
'once'
</b> option to stop after the first match.

Common metacharacters:

| Pattern  | Meaning                                  | Example                                                  |
| -------- | ---------------------------------------- | -------------------------------------------------------- |
| .        | any character                            | **'a.c'** matches **'abc'** and **'axc'**                |
| [abc]    | one character from a set                 | **'[ch]at'** matches **'cat'** or **'hat'**              |
| [^abc]   | one character not in a set               | **'[^0-9]'** matches a non-digit character               |
| [a-z]    | one character in a range                 | **'[A-Z]+'** matches uppercase letters                   |
| \\w, \\W | word or non-word character               | **'\\w+'** matches words and identifiers                 |
| \\d, \\D | digit or non-digit character             | **'\\d{4}'** matches four digits                         |
| \\s, \\S | white-space or non-white-space character | **'\\w+\\s+\\w+'** matches two words separated by spaces |

Quantifiers specify how many times the preceding expression can occur.

| Pattern   | Meaning                                |
| --------- | -------------------------------------- |
| expr\*    | zero or more times                     |
| expr+     | one or more times                      |
| expr?     | zero or one time                       |
| expr{m,n} | at least **m** and at most **n** times |
| expr{m,}  | at least **m** times                   |
| expr{n}   | exactly **n** times                    |

Quantifiers are greedy by default. Add <b>?</b> after a quantifier for a lazy match, such as <b>
'.\*?'
</b>. Add <b>+</b> after a quantifier for a possessive match, such as <b>
'.\*+'
</b>.

Grouping operators control tokens and alternatives.

| Pattern        | Meaning                                            |
| -------------- | -------------------------------------------------- |
| (expr)         | group and capture a token                          |
| (?:expr)       | group without capturing a token                    |
| (?<name>expr)  | capture a named token                              |
| (expr1\|expr2) | match either expression                            |
| \\1, \\2, ...  | match the same text as a previously captured token |

Anchors and assertions match positions rather than characters.

| Pattern              | Meaning                                                                  |
| -------------------- | ------------------------------------------------------------------------ |
| ^, $                 | beginning and end of the input text, or of a line with **'lineanchors'** |
| \\<, \\>             | beginning and end of a word                                              |
| \\b, \\B             | word boundary or not a word boundary                                     |
| (?=expr), (?!expr)   | positive or negative lookahead                                           |
| (?<=expr), (?<!expr) | positive or negative lookbehind                                          |

Use <b>
'ignorecase'
</b> for case-insensitive matching, <b>
'dotexceptnewline'
</b> when <b>.</b> must not match newline characters, <b>
'lineanchors'
</b> when <b>^</b> and <b>$</b> should apply to individual lines, and <b>
'forceCellOutput'
</b> to force scalar text results into cells.

## 💡 Examples

Find start indices and matched text.

```matlab

regexp('bat cat coat', 'c[aeiou]+t')
regexp('She sells sea shells.', '[Ss]h.', 'match')
regexp('01/11/2000', '(?<month>\d+)/(?<day>\d+)/(?<year>\d+)', 'names')

```

Match several related speed units with one expression.

```matlab

txt = ['The train traveled at 250 kilometers per hour ', ...
       'and the car traveled at 120 km/h.'];
pattern = 'k(ilo)?m(eters)?(/|\sper\s)h(r|our)?';
regexp(txt, pattern, 'match')

```

Extract email addresses from a cell array of text.

```matlab

contacts = {'Harry  hparker@hmail.com'; ...
            'Janice jan_stephens@horizon.net'; ...
            'Jason  jason_blake@mymail.com'};
email = '[a-z_]+@[a-z]+\.(com|net)';
regexp(contacts, email, 'match')

```

Use tokens, named tokens, and split output.

```matlab

regexp('3.14', '(\d+)\.(\d+)', 'tokens', 'once')
regexp('color: blue', '(?<key>\w+):\s*(?<value>\w+)', 'names')
regexp('one, two; three', '[,;]\s*', 'split')

```

## 🔗 See also

[regexpi](../string/regexpi.md), [regexprep](../string/regexprep.md), [regexptranslate](../string/regexptranslate.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
