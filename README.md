# goslin

Goslin is the **G**rammar **o**n **s**uccinct **li**pid **n**omenclature.

## Adding goslin as a Git subtree

In the root of your git project, run the git subtree command, with `<PREFIX>` replaced by the subdirectory path where you want the subtree to live:

~~~~
git subtree add --prefix=<PREFIX> https://gitlab.isas.de/lifs/goslin.git master
~~~~

Instead of `master`, you can choose any other branch or tag to clone.
For more information on git subtree, see [Git Subtree](https://github.com/git/git/blob/master/contrib/subtree/git-subtree.txt) or [this article](https://blog.developer.atlassian.com/the-power-of-git-subtree/).