<template lang="html">
  <div class="">
    <div class="field is-grouped enviar">
      <p class="control is-expanded">
        <input class="input send" type="text" placeholder="Find a repository"  v-model="texto">
      </p>
      <p class="control">
        <button type="button" name="send-text" class="button is-info" @click="enviar()">
          <span class="icon-paper-plane"></span>
        </button>
      </p>
    </div>
  </div>
</template>

<script>
export default {
  data (){
    return {
      texto: null
    }
  },
  methods:{
    enviar(){
      if (this.texto!=null) {
        this.$emit('exibeModal', this.texto);
      }
    }
  }
}
</script>

<style lang="css">
.enviar{
  width: 75%;
  position: fixed;
  left: 50%;
  margin-left: -37.5%;
  bottom: 6rem;
}

.send-text{
  color: black;
  border-color: var(--DraculaGray) !important;
  background-color: var(--DraculaWhite) !important;
}
</style>
