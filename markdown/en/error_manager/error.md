# error

Raise an error message.

## 📝 Syntax

- error(id, msg)
- error(id, msg, A, ...)
- error(msg)
- error(msg, A, ...)
- error(error\_structure)
- error(correction, ...)

## 📥 Input argument

- id - a string: error identifier.
- msg - a string: message or format.
- A - values used to format the message.
- error\_structure - scalar error message structure with message, identifier, or stack fields.
- correction - a nelson.lang.correction object.

## 📄 Description


<b>error</b> stops the current script execution. 

<b>error('
        ')</b> will be ignored and the script will continue to run. 

<b>error(msg, A, ...)</b> and <b>error(id, msg, A, ...)</b> format the message with the same rules as <b>sprintf</b>. 

<b>error(error\_structure)</b> accepts a scalar structure. Missing fields are treated as empty values, and additional fields are ignored. 

When <b>error\_structure.stack</b> is supplied, only the <b>file</b>, <b>name</b>, and <b>line</b> fields are used. Additional stack fields are ignored. Noninteger <b>line</b> values use their real integer part; invalid numeric values use <b>0</b>. 

<b>error(correction, ...)</b> stores the correction object in the thrown MException. 

identifier includes one or more component fields and a mnemonic field (example: 'nelson:matrix:empty') 

<b>How to build an error identifier.</b> An identifier is written <b>component:mnemonic</b>, with one or more component fields followed by a mnemonic, each field starting with a letter and containing only letters, digits, or underscores, separated by colons (example: 'Nelson:elementary\_functions:notFinite'). Identifiers thrown by Nelson itself use <b>Nelson</b> as the first component; in your own code use a component of your choosing (for example your module or toolbox name). 

A few rules keep identifiers useful: 

- The component should route to the area that raises the error (a module, class, or function name); the mnemonic should name the specific check in camelCase (example: 'mustBeFinite', 'tooManyInputs'). 

- For errors that can happen anywhere (argument count, indexing, an expected value shape), a short two-field identifier is enough (example: 'Nelson:tooManyInputs', 'Nelson:badsubscript'). 

- Give one identifier a single message text: an identifier reused with several different messages cannot be translated and is dropped from the message catalog. 

- Reuse an existing identifier for the same condition rather than creating a near-duplicate, and keep the mnemonic stable and descriptive (do not encode a run-time value in it).

## 💡 Examples



```matlab
error('your error message.')
error('nelson:identifier', 'your error message.')
error('Value %d', 7)
error('')
```


```matlab
 1 / [1 2 3]
a = lasterror()
lasterror('reset')
b = lasterror()
error(a)
c = lasterror()
```


## 🔗 See also

[MException](../error_manager/MException.md), [lasterror](../error_manager/lasterror.md), [warning](../error_manager/warning.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
