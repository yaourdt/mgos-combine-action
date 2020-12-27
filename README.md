# Mongoose OS create bin file

Action to combine all parts of a Mongoose OS firmware ZIP-file into a single binary.

## Inputs

| Name | Description | Required? | Default |
|---|---|---|---|
| `zipfile` | path to the firmware zip file | no | `./build/fw.zip` |
| `output`  | name of the output file       | no | `firmware.bin` |
| `args`    | further arguments             | no | - |

For further details, see [mgos-combine readme](https://github.com/yaourdt/mgos-combine).

## Outputs

The assembled firmware image can be found at `./firmware.bin`

## Example usage

Build image:
```yaml
uses: yaourdt/mgos-combine-action@v0.0.1
with:
  zipfile: ./build/fw.zip
  output: firmware.bin
  build-args: -s 4096
```

Do something with the result (e.g. upload as artifact):
```yaml
uses: actions/upload-artifact@v2
with:
  name: my-firmware
  path: ./firmware.bin
```
