# Remote Control Proto

Shared protobuf schema for OMOTE ↔ Hub communication.

## Commit Format

Conventional Commits, lowercase description ending with period:
```
<type>: <description.>
Types: feat, fix, chore, refactor, docs
```

**Do NOT add `Co-Authored-By` trailers or any AI attribution to commit messages.**

## Code Generation

Generated code is committed (`src/omote/protos/` Python + stubs, `generated/cpp/` nanopb) and
produced by `buf generate` with the toolchain pinned in `buf.gen.yaml` / `requirements-codegen.txt`.
After editing the schema: `make tools` once, then `make generate`, and commit the output. CI only
verifies (`make check`, `buf lint`, `buf breaking` against `main`); it never commits.
