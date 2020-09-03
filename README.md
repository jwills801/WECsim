# Instructions
## Update from WES-Sim's changes
```
git checkout master # The master branch is associated with his remote
git fetch
git pull
```
## Merge instructor's changes into my files
```
git checkout mybranch # Move to my branch that is associated with my remote
git merge master # Merge master *into* my branch
```
## Push my changes to my remote
```
git checkout mybranch # my branch
git push
```
## Notes on remote repos
Master branch tracks instructor's remote, origin
mybranch branch tracks my github remote, myGitHub
To view git urls:
```
git remote origin --get-url # replace `origin` with `myGitHub` for my remote
```
Make sure when creating any new branches I push to the 'myGitHub' remote!
```
git checkout -b <myNewBranch>
<make changes>
git  push --set-upstream myGitHub <myNewBranch>
```




# Visit the [WEC-Sim website](http://wec-sim.github.io/WEC-Sim) for more information.

## WEC-Sim Repository

* **Examples**: WEC-Sim model examples
* **Source**: WEC-Sim source code
* **Tests**: WEC-Sim tests run by Jenkins CI
* **Tutorials**: [WEC-Sim Tutorials](http://wec-sim.github.io/WEC-Sim/tutorials.html)

Refer to the [WEC-Sim Applications](https://github.com/WEC-Sim/WEC-Sim_Applications) respository for more applications of the WEC-Sim code,.
