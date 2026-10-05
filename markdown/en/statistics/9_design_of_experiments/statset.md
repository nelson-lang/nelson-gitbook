# statset

Create or update statistics options structures.

## 📝 Syntax

- options = statset()
- options = statset(statfun)
- options = statset(Name, Value, ...)
- options = statset(oldOptions, Name, Value, ...)

## 📥 Input argument

- statfun - statistics function name used to initialize defaults, such as 'kmeans'.
- Name, Value - option names and values. Names can be abbreviated when the abbreviation is unique.
- oldOptions - existing scalar options structure to update or merge.

## 📤 Output argument

- options - scalar structure containing statistics options fields.

## 📄 Description


<b>statset</b> creates a scalar structure with common statistics options. The structure can be passed to functions that accept an <b>Options</b> name-value argument. 

Parallel and stream option fields are accepted by statistics functions that support them. Execution can remain serial when a function does not use parallel evaluation. <b>Streams</b> can contain a <b>RandStream</b> object or a cell array of streams.

## Used function(s)


    statget
    kmeans
  

## 💡 Examples

Create default options for kmeans.

```matlab
opts = statset('kmeans');
opts.Display
opts.MaxIter
```
Update an options structure and use it with kmeans.

```matlab
X = [0 0; 0 1; 5 5; 5 6];
opts = statset('kmeans', 'Display', 'final', 'MaxIter', 20);
[idx, C] = kmeans(X, 2, 'Start', [0 0; 5 5], 'Options', opts)
```
Set parallel option fields.

```matlab
opts = statset('UseParallel', true, 'UseSubstreams', true, 'Streams', {});
statget(opts, 'UseParallel')
```
