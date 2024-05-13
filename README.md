# Minimal example with dict issue

When 2 dicts are accessed alternately, `cairo1-run` returns `Error: VirtualMachine(Hint((0, Memory(UnknownMemoryCell(Relocatable { segment_index: 10, offset: 4 })))))`.

```cairo
    fn main() {
        let mut dict: Felt252Dict<felt252> = Default::default();
        let mut processed: Felt252Dict<felt252> = Default::default();

        processed.insert(1, 0);
        dict.insert(1, 1);
        processed.insert(1, 1);
    }
```

Any alteration of order, even of the `let` statements fixes the issue. `scarb run` also works as expected.

## Prerequisites

```bash
    cargo install --git https://github.com/lambdaclass/cairo-vm cairo1-run
    wget https://github.com/starkware-libs/cairo/archive/refs/tags/v2.6.3.zip -O cairo.zip
    unzip cairo.zip && mv cairo-2.6.3/corelib . && rm -r cairo-2.6.3 cairo.zip
```
