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

Generated code lives in `generated/` (Python + C++/NanoPB). The GitHub Actions workflow regenerates on push to `main`.
