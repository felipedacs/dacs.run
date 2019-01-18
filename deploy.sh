# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# diretorio recriado, git reinicializado
git init
echo '[source](https://github.com/felipedacs/dacs.run)' > README.md

#============================================
# github
#============================================
echo 'dacs.run' > CNAME
echo 'https://github.com/felipedacs/dacs.run' > readme.md
git add -A
git commit -m 'deploy :octocat:'

# https://<USERNAME>.exemplo.io é obrigatorio ser na branch master!
git push -f https://github.com/felipedacs/felipedacs.github.io.git master

# https://<USERNAME>.exemplo.io/repo deve ser dado push na branch gh-pages/gl-pages
# git push -f https://gitlab.com/felipedacs/repo master:gh-pages
# git push -f https://gitlab.com/felipedacs/repo master:gl-pages

#============================================
# gitlab
#============================================
echo 'felipe.dacs.run' > CNAME
cp ../.gitlab-ci.yml .gitlab-ci.yml
cp ../.projects-gitlab.txt .projects-gitlab.txt

#--------------------------------------------
# gitlab clones
#--------------------------------------------
# gitlab, diferente do github, não possui suporte para os projetos ficarem ligados ao dominio customizado
# é necessário criar pastas manualmente para acessar dominio.com/teste

# https://docs.gitlab.com/ee/user/project/pages/introduction.html#add-a-custom-domain-to-your-pages-website
# Note: Currently there is support only for custom domains on per-project basis.
# That means that if you add a custom domain (example.com) for your user website (username.example.io),
# a project that is served under username.example.io/foo, will not be accessible under example.com/foo

# https://gitlab.com/gitlab-org/gitlab-pages/issues/5
# https://gitlab.com/gitlab-com/support-forum/issues/3592
# https://gitlab.com/gitlab-com/support-forum/issues/2661
# https://gitlab.com/gitlab-org/gitlab-ee/issues/302

# .projects-gitlab.txt deve conter um nome de repositorio por linha
# setar nome do repositorio
# clonar a partir de gl-pages
# remover .git do projeto para não criar submodulo (pois também não funciona)
# descomentar linhas abaixo caso queira adicionar paginas ao gitlab pages
# for repo in `cat .projects-gitlab.txt`; do
#     echo "==================== repo: $repo"
#     git clone --depth=1 --branch=gl-pages https://gitlab.com/felipedacs/$repo
#     rm -rf $repo/.git
# done

git add -A
git commit -m 'deploy :fox_face:'
git push -f https://gitlab.com/felipedacs/felipedacs.gitlab.io.git master

cd -
