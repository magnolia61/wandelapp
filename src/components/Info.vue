<template>
  <Modal :back="!welcome" :class="welcome ? 'py-10' : 'py-20'" class="px-5 overflow-auto flex justify-center" @back="goBack">
    <div class="max-w-xl m-auto">
      <h1 class="text-3xl font-bold mb-8">
        {{ welcome ? 'Welkom!' : 'Informatie' }}
      </h1>

      <p class="mb-5">
        Leuk dat je meedoet aan de Groeiroute wandeling van Identitycraft!
      </p>

      <img src="../assets/phone.svg" class="h-12 mb-2">
      <p class="mb-5">
        Probeer steeds ongeveer een kwartier te lipen en neem dan een kwartier voor een hoofdstuk uit het boekje.
      </p>

      <img src="../assets/marker.svg" class="h-11 mb-2">
      <p class="mb-8">
        Zodra je op start klikt, vragen we je toestemming om je locatie te gebruiken om de route weer te geven.
      </p>

      <Button v-if="welcome" class="w-full mb-5" @click="state.start">
        Start wandeling
        <img src="../assets/arrow.svg" class="h-4 ml-2 transform rotate-180">
      </Button>

      <div v-if="welcome" class="flex justify-center">
        <DownloadToggle />
      </div>
    </div>
  </Modal>
</template>

<script>
import Modal from './common/Modal'
import Button from './common/Button'
import DownloadToggle from './download/DownloadToggle'
import state from '../state'

export default {
  components: {
    Modal,
    Button,
    DownloadToggle
  },
  props: {
    welcome: { type: Boolean, default: false }
  },
  setup () {
    return { state }
  },
  methods: {
    goBack () {
      this.$router.push({ name: 'home' })
    }
  }
}
</script>
