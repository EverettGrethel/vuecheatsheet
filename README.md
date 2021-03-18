# Vue Cheat Sheet
## Setup
To make a new Vue app, run
```
npm install -g @vue/cli
```
This should also initialize a .git file. You can add a remote repo with
```
git remote add origin <remote repository URL>
```
along with pushing a first commit.<br>
To run the dev server, run
```
npm run serve
```
You could also run "npm run lint", which will check for any linting errors.
To add Vue Router or other CLI plugins, run
```
vue add router
```
We could have also added router initially by using a custom preset instead of default. If you activate history mode, you will not be able to run a static server anymore.
## Deployment
In your console, run 
```
npm run build
```
This will make a new /dist folder. Make sure it is included in your .gitignore file. Now push to Github, publish your GitHub Pages (if that is what you are using), and visit `https://<USER_NAME>.github.io/<REPO_NAME>/dist`. If you get any 404 missing file errors, one option is to create a subtree for your dist folder. To do this, go in your console and run
```
git subtree push --prefix dist origin gh-pages
```
Then, go to your Github Pages and change Source Branch to gh-pages. Give it some time to publish.<br>
To shorten having to write `git subtree push --prefix dist origin gh-pages`, add this alias to your global .gitconfig file:
```
[alias]
    stpp = subtree push --prefix
```
which will allow you to instead write `git stpp dist origin gh-pages` to push