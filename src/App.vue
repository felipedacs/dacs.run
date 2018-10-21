<template>
  <section id="app" class="hero section is-fullheight">
    <div class="container-custom container ">
    <router-view/>
  </div>
  <div class="hero-foot">
    <span class="help">Feito gratuitamente com <span class="icon-foot icon-git"></span> <span class="icon-foot icon-github"></span> <span class="icon-foot icon-gitlab1"></span> <span class="icon-foot icon-vue-dot-js"></span> <span class="icon-foot icon-webpack"></span> <span class="icon-foot icon-IcoMoon"></span> <span class="icon-foot icon-atom"></span> <span class="icon-foot icon-ubuntu"></span> <a class="icon-foot" href="https://draculatheme.com/" target="_blank">dracula</a> </span>
  </div>
</section>
</template>

<style>
@import '../src/assets/icomoon/style.css';

*{
  /* dracula colors */
  --DraculaWhite: #F7F7F1;
  --DraculaGray: #808186;
  --DraculaDarkGray: #444650;
  --DraculaGreen: #50FA7B;
  --DraculaBlue: #8BE9FD;
  --DRaculaOrange: #F3B162;
  --DraculaYellow: #FFB86C;
  --DraculaLightYellow: #EFFA84;
  --DraculaPink: #D065A7;
  --DraculaPurple: #4E5981;
  --DraculaLightPurple: #BD93F9;
  --DraculaDarkPurple: #282A36;
  --DraculaDarkPurple2: #55628F;
  --DraculaDarkPurple3: #363847;
}


#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #B5B4B1;
  background-color: var(--DraculaDarkPurple);
}
#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}

.container-custom{
  text-align: initial !important;
  margin: unset !important;
}

.icon{

}

.icon-foot{
  padding-left: .4rem
}

.notitification a{
  color: var(--DraculaGreen);
}
a:hover{
  animation: fontcolor .5s infinite !important;
}

@keyframes fontcolor{
  0%{
    color: var(--DraculaLightPurple) ;
  }
  15%{
    color: var(--DraculaBlue);
  }
  30%{
    color: var(--DraculaGreen);
  }
  45%{
    color: var(--DraculaYellow);
  }
  60%{
    color: var(--DRaculaOrange);
  }
  75%{
    color: var(--DraculaPink);
  }
  100%{
    color: var(--DraculaLightPurple);
  }
}
</style>
