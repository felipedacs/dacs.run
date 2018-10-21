<template lang="html">
  <a class="column is-narrow icone" :href="link.url" :title="link.title" :target="targetSe()" @click='acaoLink()'>
    <span :class="link.class" :style="{ color : this.escolheCor() }"></span>
  </a>
</template>

<script>
export default {
  props:['link'],
  methods:{
    escolheCor() {
      return this.cores[Math.floor(Math.random() * this.cores.length)];
    },
    acaoLink(){
      if (this.link.acao != '') {
        eval(this.link.acao);
      }
    },
    exibeModal(texto){
      this.$emit('exibeModal', texto);
    },
    targetSe(){
      if (this.link.url != '#') {
        return '_blank';
      }
    }
  },
  data (){
    return {
      cores: [
        'var(--DraculaWhite)',
        'var(--DraculaGreen)',
        'var(--DraculaBlue)',
        'var(--DRaculaOrange)',
        'var(--DraculaYellow)',
        'var(--DraculaLightYellow)',
        'var(--DraculaPink)',
        'var(--DraculaLightPurple)',
      ]
    }
  }
}
</script>

<style lang="css">
/* ajuste dos icones coloridos -.-' */
.icon-discord::before{
  color: unset;
}

.icone{
  padding: .3rem;
  font-size: 1.5rem;
text-decoration: none !important;
}

.icone span:hover{
  animation: fontcolor .5s infinite;
}
</style>
