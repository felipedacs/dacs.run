# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
echo 'dacs.run' > CNAME
echo 'https://github.com/felipedacs/dacs.run' > readme.md

git init
git add -A
git commit -m 'deploy :octocat:'

# if you are deploying to https://<USERNAME>.github.io
git push -f https://github.com/felipedacs/felipedacs.github.io.git master


cp ../.gitlab-ci.yml .gitlab-ci.yml
git add -A
git commit -m 'deploy :fox_face:'
git push -f https://gitlab.com/felipedacs/felipedacs.gitlab.io.git master

cd -
