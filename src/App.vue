<script>
import HomeView from "./views/HomeView.vue";

export default {
  components: {
    HomeView,
  },
};
</script>

<template>
  <HomeView></HomeView>
</template>

<style lang="scss">
@import "./assets/all.scss";

img {
  object-fit: contain;
  max-width: 100%;
}

.primary-image {
  height: 300px;
}

.images {
  height: 150px;
}
</style>
