<template lang="html">
  <div class="columns is-mobile corpo-msg">
    <div class="column is-1 is-narrow coluna-avatar">
      <Avatar></Avatar>
    </div>
    <div class="envio-msg" :style="defineTamanho">
      <span v-if="nameVisible"><span class="nickname">dacs</span> now:</span>
      <div class="notification message">
        <span v-if="!nameVisible" class="message-load">. . .</span>
        <slot></slot>
      </div>
    </div>
  </div>
</template>

<script>
import Avatar from '@/components/Home/Avatar.vue'
export default {
  props:['nameVisible'],
  components: {
    Avatar,
  },
  data (){
    return {
    }
  },
  computed:{
    defineTamanho: function(){
      if (!this.nameVisible) {
        return 'width: auto'
      } else {
        return 'width: 100%'
      }
    }
  }
}
</script>

<style lang="css">

.envio-msg {
  height: 100%;
}

.coluna-avatar{
  min-width: 80px !important;
}

.corpo-msg{
  align-items: center !important;
}

.nickname{
  font-weight: bold;
}

.message{
  background-color: var(--DraculaDarkPurple3) !important;
}

.message-load{
  animation: digitandoDash 2s infinite !important;
}

@keyframes digitandoDash{
  0%{
    color: #B5B4B1;
  }
  50%{
    color: var(--DraculaDarkPurple3);
  }
  100%{
    display: #B5B4B1;
  }
}
</style>
