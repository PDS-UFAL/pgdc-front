<template>
  <div>
    <v-app-bar color="cloudy-grey" elevation="0" dark>
      <v-toolbar-title class="d-flex mx-auto">
        Observatório de Dados Institucionais
      </v-toolbar-title>
    </v-app-bar>

    <v-bottom-navigation
      fixed
      dark
      background-color="cloudy-grey"
      active-class="primary"
    >
      <v-btn
        v-for="item in items"
        :key="item.title"
        :value="item.title"
        :to="item.path"
      >
        <span>{{ item.title }}</span>

        <v-icon>{{ item.icon }}</v-icon>
      </v-btn>

      <v-btn value="Logout" @click="logout">
        <span>Sair</span>

        <v-icon>mdi-logout</v-icon>
      </v-btn>
    </v-bottom-navigation>
  </div>
</template>

<script>
  import { mapActions } from 'vuex';

  export default {
    name: 'MobileNavigation',
    props: {
      items: {
        type: Array,
        default: () => [],
      },
    },
    methods: {
      ...mapActions(['setAuthToken', 'setUser']),
      logout() {
        this.setAuthToken({ token: null });
        this.setUser({ user: null });
        this.$router.push({ name: 'Login' });
      },
    },
  };
</script>

<style></style>
