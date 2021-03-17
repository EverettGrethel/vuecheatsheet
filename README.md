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
If you don't have one, make a file called `vue.config.js` in your root directory. Inside, add the code
```
module.exports = {
  publicPath: process.env.NODE_ENV === 'production'
    ? '/my-project/'
    : '/'
}
```
and change `/my-project/` to your project name if using GitHub Pages with the URL "https://your-name.github.io/my-project/".<br>
Once again in your root directory, create a file called `deploy.sh` and add the code
```
#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -
```
The command `npm run build` will build our app for production. Uncomment the line of code that corresponds to your URL and add your username and/or repo instead of `USERNAME` and `REPO`.