# inputParser

Parses and validates function inputs.

## 📝 Syntax

- p = inputParser()
- addRequired(p, name)
- addRequired(p, name, validator)
- addOptional(p, name, defaultValue)
- addOptional(p, name, defaultValue, validator)
- addParameter(p, name, defaultValue)
- addParameter(p, name, defaultValue, validator)
- addParamValue(p, name, defaultValue)
- addParamValue(p, name, defaultValue, validator)
- parse(p, varargin{:})

## 📥 Input argument

- name - valid identifier used as a field name in the parser results.
- defaultValue - value used when an optional or parameter input is omitted.
- validator - function handle called with the candidate value. It can return a scalar logical value or raise an error.
- varargin - inputs to parse. Positional inputs are matched first, then name-value inputs.

## 📤 Output argument

- p - handle object that stores the input specification and the parse result.

## 📄 Description


<b>inputParser</b> defines required, optional, and name-value inputs and stores parsed values in <b>Results</b>. 

Required inputs are consumed first and must be present. Optional inputs are consumed after required inputs when the next positional value satisfies their validator and is not recognized as a parameter name. Parameters are specified as name-value pairs and can appear after positional inputs. 

<b>addParameter</b> and <b>addParamValue</b> add name-value parameters. <b>addParamValue</b> is accepted as a compatibility alias. 

The parser scheme is defined with <b>addRequired</b>, <b>addOptional</b>, <b>addParameter</b>, and <b>addParamValue</b>. The scheme can be built in any order, but <b>parse</b> consumes required positional inputs first, optional positional inputs next, and name-value inputs last. 

When a name-value parameter is repeated, the last supplied value is kept in <b>Results</b>. 

The writable properties are: 

<b>FunctionName</b>: text prepended to parser error messages. 

<b>CaseSensitive</b>: when false, parameter names are matched without case sensitivity. The default is false. 

<b>KeepUnmatched</b>: when true, unrecognized name-value pairs are stored in <b>Unmatched</b>. The default is false. 

<b>PartialMatching</b>: when true, a unique leading partial parameter name is accepted. The default is true. 

<b>StructExpand</b>: when true and <b>parse</b> receives one scalar struct, the struct fields are treated as name-value pairs. The default is true. 

The read-only properties are: 

<b>Parameters</b>: names added to the parser in declaration order. 

<b>Results</b>: scalar struct containing parsed values and defaults. 

<b>Unmatched</b>: scalar struct containing unrecognized name-value pairs when <b>KeepUnmatched</b> is true. 

<b>UsingDefaults</b>: cell array of optional and parameter names whose default values were used.

## 💡 Examples

Required input and name-value parameter.

```matlab
p = inputParser();
addRequired(p, 'width', @(x) isnumeric(x) && isscalar(x));
addParameter(p, 'units', 'm', @(x) ischar(x) || isstring(x));
parse(p, 10, 'units', 'cm');
p.Results
```
Optional input, defaults, and last name-value wins.

```matlab
p = inputParser();
addRequired(p, 'name', @(x) ischar(x) || isstring(x));
addOptional(p, 'count', 1, @(x) isnumeric(x) && isscalar(x) && x > 0);
addParameter(p, 'mode', 'fast', @(x) validatestring(x, {'fast', 'slow'}));
parse(p, 'job', 'mode', 'slow', 'mode', 'fast');
p.Results
p.UsingDefaults
```
Struct expansion with unmatched fields.

```matlab
p = inputParser();
p.KeepUnmatched = true;
addParameter(p, 'width', 1, @(x) isnumeric(x) && isscalar(x));
addParameter(p, 'height', 1, @(x) isnumeric(x) && isscalar(x));
opts.width = 10;
opts.height = 5;
opts.color = 'blue';
parse(p, opts);
p.Results
p.Unmatched
```


## 🔗 See also

[validateattributes](../validators/validateattributes.md), [validatestring](../validators/validatestring.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
