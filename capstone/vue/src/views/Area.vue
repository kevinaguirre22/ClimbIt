<template>
  <div class="area">
    <!-- return to state page button -->
    <div class="mx-5">
      <v-row class="mt-n10 pb-5 justify-start">
        <v-btn
          x-small
          v-bind:to="{
            name: 'state-page',
            params: { abbrev: area.stateAbbrev },
          }"
          exact
        >
          <v-icon x-small>mdi-arrow-left-circle</v-icon>
          to state
        </v-btn>
      </v-row>
    </div>
    <!-- component -->
    <area-tools
      v-if="this.$store.state.user.authorities[0].name == 'ROLE_ADMIN'"
    />
    <h2 class="secondary">{{ area.name }}</h2>
    <!-- component -->
    <area-map />
    <!-- <new-area-form-map v-bind:area="area"/> -->
    <!-- component -->
    <area-detail />
    <!-- <comment-container  -->
  </div>
</template>

<script>
import AreaDetail from "../components/area/AreaDetail.vue";
//import NewAreaFormMap from '../components/area/NewAreaFormMap.vue'
import AreaMap from "../components/area/AreaMap.vue";
import AreaTools from "../components/adminTools/AreaTools.vue";
import locationService from "../services/LocationService.js";
export default {
  components: { AreaDetail, AreaMap, AreaTools }, //NewAreaFormMap
  name: "area",
  data() {
    return {
      area: {},
    };
  },
  created() {
    locationService.getAreaById(this.$route.params.id).then((response) => {
      if (response.status == 200) {
        this.area = response.data;
        this.$store.commit("SET_ACTIVE_AREA", this.area);
      }
    });
  },
};
</script>

<style>
h2 {
  color: white;
  width: 100%;
}
</style>