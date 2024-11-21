# Monolike

A tool which facilitates the work with multiple repos as if it's a monorepo.

## Documentation

### Setup

* Create you own monorepo-like directory
* Clone monolike inside
* Copy one of the runners from bin at the directory root (or install it globally)
* Done one of:
    * Create `subprojects.txt` at the directory root and run `./mono clone` (an example one is provided in `etc/`)
    * Manually clone your subprojects in the directory

### Usage

*run from the root directory*

`$ ./mono cmd [args]`

**Commands**

* `clone` - clones repos from `subprojects.txt`
* `status` - runs `git status` for each subdirectory
* `pull` - runs `git pull -r` in each subdirectory
