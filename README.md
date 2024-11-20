# Monolike

A tool which facilitates the work with multiple repos as if it's a monorepo.

## Documentation

### Setup

* Create you own monorepo-like directory
* Clone monolike inside
* Copy (or install) one of the runners from bin at the directory root
* Done one of:
    * Create `subprojects.txt` at the directory root and run `./mono clone`
    * Manually clone your subprojects in the directory

### Usage

`$ ./mono cmd [args]`

**Commands**

* `clone` - clones repos from `subprojects.txt`
* `status` - runs `git status` for each subdirectory
* `pull` - runs `git pull -r` in each sunbdirectory
