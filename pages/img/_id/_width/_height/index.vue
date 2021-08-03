<template>
  <div class="w-screen h-screen flex justify-center items-center">
    <img :src="imageSrc">
  </div>
</template>

<script>
export default {
  data () {
    return {
      imageSrc: null
    }
  },
  fetch () {
    const { id, width, height } = this.$nuxt.context.params
    this.imageSrc = `https://picsum.photos/id/${id}/${width}/${height}`
  }
}
</script>
