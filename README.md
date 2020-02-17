# goslin

Goslin is the **G**rammar **o**n **s**uccinct **li**pid **n**omenclature.

## Adding goslin as a Git subtree

In the root of your git project, run the git subtree command, with `<PREFIX>` replaced by the subdirectory path where you want the subtree to live:

~~~~
git subtree add --prefix=<PREFIX> https://gitlab.isas.de/lifs/goslin.git master
~~~~

Instead of `master`, you can choose any other branch or tag to clone.
For more information on git subtree, see [Git Subtree](https://github.com/git/git/blob/master/contrib/subtree/git-subtree.txt) or [this article](https://blog.developer.atlassian.com/the-power-of-git-subtree/).


## Pulling and pushing of a Git subtree
For pulling and pushing, you have to change into the root directory of the host repository and execute the following commands:

### Pulling
~~~~
git subtree pull --prefix=<PREFIX> https://gitlab.isas.de/lifs/goslin.git master
~~~~

### Pushing
~~~~
git subtree push --prefix=<PREFIX> https://gitlab.isas.de/lifs/goslin.git master
~~~~

Alternatively, you can create shortcuts/aliases in your repository's `.git/config` file:

~~~~
[alias]
    # the acronym stands for "subtree pull"
    goslin-pull = "!f() { git subtree pull --prefix <PREFIX> https://gitlab.isas.de/lifs/goslin.git master; }; f"
    # the acronym stands for "subtree push"
    goslin-push = "!f() { git subtree push --prefix <PREFIX> https://gitlab.isas.de/lifs/goslin.git master; }; f"
~~~~

Make sure to replace `<PREFIX>` with the proper path from your repository root directory to the directory where you placed your subtree in!

This allows you to run `git goslin-pull` to pull the latest master version, or `git goslin-push` to push your latest local commits on the goslin subtree to the upstream repository.


## Test data

. lipidmaps-names-Feb-10-2020.tsv - generated from LipidMAPS LMSDB export on Feb. 10th, 2020. Filtered all entries without an abbreviation.
. swisslipids-names-Feb-10-2020.tsv - generated from Swiss Lipids (lipids table) export on Feb. 10th ,2020.
