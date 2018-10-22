# abort on errors
set -e

# build
npm run build

# move CNAME
cp CNAME dist/CNAME

# navigate into the build output directory
cd dist



# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'


# branch gh-pages
git checkout -b gh-pages

# if you are deploying to https://<USERNAME>.github.io
git push -f https://gitlab.com/felipedacs/felipedacs.gitlab.io.git gh-pages

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -
