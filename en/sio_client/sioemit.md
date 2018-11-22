

# sioemit

Emit an event to web client.

## Syntax

- sioemit(name, message)
- sioemit(name)

## Input argument

 - name - a string: event name
 - message - a string: message to emit

## Description


  <p><b>sioemit</b> emits an event to client.</p>


## Example

```matlab
sioemit('event_demo', jsonencode(eye(3,3)))
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



