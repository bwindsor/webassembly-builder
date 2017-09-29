# webassembly-builder
Dockerfile for building C code into webassembly.

## Usage
1. Clone the repository: `git clone https://github.com/bwindsor/webassembly-builder.git`
2. Build the docker image: `docker build --tag webassembly .`
3. Build your project:
```bash
cd path/to/my/code
docker run -e WASM_INPUT=<input files> -e WASM_OUTPUT=<output files> --rm -v .:/src -it webassembly
```

## Example
1. Move into example directory: `cd Example`
2. Run build script: `./BUILD`
