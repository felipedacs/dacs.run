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
git commit -m 'deploy gh :octocat:'

# if you are deploying to https://<USERNAME>.github.io
git push -f https://github.com/felipedacs/felipedacs.github.io.git master


# mkdir public
cd ..
mv dist gitlab-deploy
mkdir dist
mv gitlab-deploy dist/public
# move arquivo gitlab
cp .gitlab-ci.yml dist/.gitlab-ci.yml
cd dist
git add -A
git commit -m 'deploy gl :fox_face:'
git push -f https://gitlab.com/felipedacs/felipedacs.gitlab.io.git master
cd ..
cd -









# # mkdir public
# cd ..
# mkdir gitlab
# cp -r dist/* gitlab
# mv gitlab dist/public
# # move arquivo gitlab
# cp .gitlab-ci.yml dist/.gitlab-ci.yml
# cd dist
# git add -A
# git commit -m 'deploy gl :fox_face:'
# git push -f https://gitlab.com/felipedacs/felipedacs.gitlab.io.git master
# cd ..
# cd -
