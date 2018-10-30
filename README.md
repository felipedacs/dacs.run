# dacs.run
* Source code of [dacs.run](https://dacs.run) and [felipe.dacs.run](http://felipe.dacs.run)
* Deploy on branch master in  [felipedacs.github.io](https://github.com/felipedacs/felipedacs.github.io) and [felipedacs.gitlab.io](https://gitlab.com/felipedacs/felipedacs.gitlab.io)

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Deploy on github and gitlab
```
chmod +x deploy.sh
./deploy.sh
```
* github com https built in
* gitlab precisa do arquivo ``.gitlab-ci.yml`` e ``.projects-gitlab.txt`` (mais detalhes comentados em ``deploy.sh``)

### Run your tests
```
npm run test
```

### Lints and fixes files
```
npm run lint
```
