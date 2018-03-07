



parsefile


parsefile

Parse a Nelson file.

## Syntax

- status = parsefile(filename)

## Input argument

 - filename - a string: a filename to parse.

## Output argument

 - status - a string: 'script', 'function', 'error'.

## Description


  <p><b>parsefile</b> parse a file and returns if it is a valid script, a valid function or an error.</p>


## Example

```Nelson
parsefile([nelsonroot(), '/etc/startup.nls'])
parsefile([nelsonroot(), '/modules/data_structures/functions/getfield.nlf'])
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



