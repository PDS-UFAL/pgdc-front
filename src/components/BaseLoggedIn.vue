<template>
  <div>
    <Navigation />
    <div
      :class="{
        'side-margin': $vuetify.breakpoint.mdAndUp,
        'bottom-margin': $vuetify.breakpoint.smAndDown,
        'pa-4': true,
        'py-md-8': true,
        'px-md-16': true,
      }"
    >
      <router-view :key="$route.path" />
    </div>
  </div>
</template>

<script>
  import Navigation from '@/components/Navigation.vue';

  export default {
    name: 'BaseLoggedIn',
    components: {
      Navigation,
    },
  };
</script>

<style lang="scss" scoped>
  .side-margin {
    margin-left: 256px;
  }

  .bottom-margin {
    margin-bottom: 96px;
  }
</style>
