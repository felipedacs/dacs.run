<template>
  <div class="">

    <div id="modal-info" class="modal">
      <div class="modal-background"></div>
      <div id="modal-texto" class="modal-content">
      </div>
      <button class="modal-close is-large" aria-label="close" @click="fechaModalInfo()"></button>
    </div>

    <div class="messages">

      <Message id="msg1" v-show="msgs[0].status" :nameVisible="true">
        <p>Olá, meu nome é Felipe, tenho 22 anos e sou <strike>garoto de programa</strike> dev jr. Interessei-me na área em 2016 e meu <a href="https://dacs.work" target="_blank">portfólio</a> está simples ainda, mas o mantenho atualizado.</p>
      </Message>

      <Message id="msg2" v-show="msgs[1].status" :nameVisible="true">
        <p>Atualmente estudo principalmente go, c# com .net MVC e o framework vue. Sempre que sinto confiança o suficiente escrevo no <a href="https://escalimetro.github.io" target="_blank">escalímetro</a>. Sei alguma coisa de php, python e java; estou aprendendo a usar o ecosistema do ubuntu.</p>
      </Message>

      <Message id="msg3" v-show="msgs[2].status" :nameVisible="true">
        <p style="padding-bottom: 1.5em;">Pode me encontrar em:</p>
        <div class="columns is-mobile is-multiline">
          <Icons v-for="(socialLink, i) in socialLinks" :key='i' :link='socialLink' @exibeModal="exibeModal($event)">
          </Icons>
        </div>
      </Message>

      <Message id="msg4" v-show="msgs[3].status" :nameVisible="true">
        Mantenho atualmente apenas <a href="https://gitlab.com/felipedacs/estudo-pratica" target="_blank">meu diário de estudo</a>, <a href="http://carrinho.top" target="_blank">lista de compras</a>, <a href="https://github.com/felipedacs/yugo" target="_blank">yugo (meu tcc)</a> e o <a href="http://felipedacs.pythonanywhere.com/" target="_blank">randomaster</a>.
      </Message>

      <Message v-show="msgLoad" :nameVisible="false"></Message>
    </div>

    <Send @exibeModal="exibeModalAviso($event)"></Send>

  </div>
</template>

<script>
// @ is an alias to /src
import Avatar from '@/components/Home/Avatar.vue'
import Message from '@/components/Home/Message.vue'
import Icons from '@/components/Home/Icons.vue'
import Send from '@/components/Home/Send.vue'

export default {
  name: 'home',
  components: {
    Avatar,
    Message,
    Icons,
    Send,
  },
  methods:{
    exibeModal(texto){
      let modalTexto = document.getElementById('modal-texto').innerHTML = texto;
      let info = document.getElementById('modal-info').classList.add('is-active');
    },
    exibeModalAviso(texto){
      let modalTexto = document.getElementById('modal-texto').innerHTML = "Opa, tudo certo? Me envia um email, chama no linkedin ou no discord! Valeu";
      let info = document.getElementById('modal-info').classList.add('is-active');
    },
    fechaModalInfo() {
      document.getElementById('modal-info').classList.remove('is-active')
    },
    carregaMsgs(msgs) {
      let vm = this;

      for (var i = 0; i < msgs.length; i++) {



        // tempo digitando enquanto não há resposta
        let tempoDigitando = ((msgs[i].tempoFinal-msgs[i].tempoInicial)/5)+msgs[i].tempoInicial; // tempo para não ser exato o "digitando"
        setTimeout(function(){
          vm.msgLoad = true;
        }, tempoDigitando);

        // atualizar msg com eval
        let vmS = "vm.msgs[";
        let trueS = "].status=true";
        let msg  = vmS + i + trueS; // criar comand para eval

        setTimeout(function(){
          eval(msg);
          vm.msgLoad = false;
        }, msgs[i].tempoFinal);

        if (i != 1) {
          // scroll para baixo assim que aparecer msg digitando
          setTimeout(function(){
            window.scrollTo(0,document.body.scrollHeight);
          }, tempoDigitando+10); // tempo +10ms

          // scroll para baixo assim que aparecer msg
          setTimeout(function(){
            window.scrollTo(0,document.body.scrollHeight);
          }, msgs[i].tempoFinal+10);
        }




      }
    }
  },
  data (){
    return {
      msgs:[
        {
          status: false,
          tempoInicial: 0,
          tempoFinal: 4000
        },
        {
          status: false,
          tempoInicial: 4000,
          tempoFinal: 10000
        },
        {
          status: false,
          tempoInicial: 10000,
          tempoFinal: 21000
        },
        {
          status: false,
          tempoInicial: 21000,
          tempoFinal: 27000
        }
      ],
      msgLoad: true,
      socialLinks: [
        {
          title: 'Github Accout',
          url: 'https://github.com/felipedacs',
          class: 'perfilbar-icon icon-github'
        },
        {
          title: 'GitLab Accout',
          url: 'https://gitlab.com/felipedacs',
          class: 'perfilbar-icon icon-gitlab'
        },
        {
          title: 'Linkedin Accout',
          url: 'https://www.linkedin.com/in/felipedacs/',
          class: 'perfilbar-icon icon-linkedin-square'
        },
        {
          title: 'SlideShare Accout',
          url: 'https://www.slideshare.net/felipedacs',
          class: 'perfilbar-icon icon-slideshare'
        },
        {
          title: 'Email: felipe.dacs@gmail.com',
          url: 'mailto:felipe.dacs@gmail.com?Subject=contact from projects on github',
          class: 'perfilbar-icon icon-envelope'
        },
        {
          title: 'Discord',
          url: '#',
          acao:'this.exibeModal("dacs#0822")',
          class: 'perfilbar-icon icon-discord'
        },
        {
          title: 'CodePen Accout',
          url: 'https://codepen.io/felipedacs/',
          class: 'perfilbar-icon icon-codepen'
        },
        {
          title: 'JSFiddle Accout',
          url: 'https://jsfiddle.net/user/felipedacs/',
          class: 'perfilbar-icon icon-jsfiddle'
        },
        {
          title: 'Replit Accout',
          url: 'https://repl.it/@felipe_dacs',
          class: 'perfilbar-icon icon-terminal'
        },
        {
          title: 'Stack Overflow',
          url: 'https://stackoverflow.com/users/9881278/felipedacs',
          class: 'perfilbar-icon icon-stack-overflow'
        },
        {
          title: 'Deviantart Accout',
          url: 'https://neninja.deviantart.com/',
          class: 'perfilbar-icon icon-deviantart'
        },
        {
          title: 'Itch Accout',
          url: 'https://felipedacs.itch.io',
          class: 'perfilbar-icon icon-pacman'
        },
        {
          title: 'Trello Accout',
          url: 'https://trello.com/felipedacs',
          class: 'perfilbar-icon icon-trello'
        },
        {
          title: 'Reddit',
          url: 'https://www.reddit.com/u/nenitfate',
          class: 'perfilbar-icon icon-reddit-alien'
        },
        {
          title: 'Free Code Camp Accout',
          url: 'https://www.freecodecamp.org/felipedacs',
          class: 'perfilbar-icon icon-free-code-camp'
        },
        {
          title: 'Free Code Camp Accout',
          url: 'https://www.freecodecamp.org/felipedacs',
          class: 'perfilbar-icon icon-steam'
        },
        {
          title: 'Wish list 👌',
          url: 'https://dacs.run/wish-list/',
          class: 'perfilbar-icon icon-heart'
        }
      ]
    }
  },
  created(){
    this.carregaMsgs(this.msgs);
  }
}
</script>

<style media="screen" scoped="">
.container{
  text-align: initial;
}

.modal-content{
  color: white;
  text-align: center;
}

.coluna-avatar{
  min-width: 100px;
}

.messages{
  /* espaço para enviar msg */
  padding-bottom: 5rem;
}
</style>
