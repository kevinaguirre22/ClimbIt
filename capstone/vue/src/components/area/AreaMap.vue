<template>
  <div class="map">
    <GmapMap
      :options="{
        zoomControl: true,
        mapTypeControl: true,
        scaleControl: true,
        streetViewControl: false,
        rotateControl: false,
        fullscreenControl: true,
        disableDefaultUi: true,
      }"
      :center="center"
      :zoom="9.75"
      style="width: 100%; height: 400px"
      id="map"
    >
      <div>
        <GmapMarker
          v-for="crag in crags"
          :key="crag.id"
          :position="{
            lat: parseFloat(crag.latitude),
            lng: parseFloat(crag.longitude),
          }"
          @click="openMarker(crag.id)"
        >
          <GmapInfoWindow
            :closeclick="true"
            @closeclick="openMarker(null)"
            :opened="openedMarkerID === crag.id"
            :options="{
              pixelOffset: {
                width: 10,
                height: 0,
              },
              maxWidth: 150,
              maxHeight: 320,
            }"
          >
            <div @click.stop="navigateToPage(crag.id)">
              {{ crag.name }}
              <v-divider></v-divider>
              {{ crag.description }}
            </div>
          </GmapInfoWindow>
        </GmapMarker>
      </div></GmapMap
    >
  </div>
</template>

<script>
//import AreaDetail from './components/AreaDetail.vue'
import locationService from "../../services/LocationService.js";
export default {
  name: "area-map",
  data() {
    return {
      area: {},
      crags: [],
      center: { lat: "", lng: "" },
      openedMarkerID: null,
    };
  },
  created() {
    locationService.getAreaById(this.$route.params.id).then((response) => {
      if (response.status == 200) {
        this.area = response.data;
        this.center.lat = parseFloat(this.area.latitude);
        this.center.lng = parseFloat(this.area.longitude);
        locationService.getCragsByArea(this.area.id).then((response) => {
          if (response.status == 200) {
            this.crags = response.data;
          }
        });
      }
    });
  },
  methods: {
    openMarker(id) {
      this.openedMarkerID = id;
    },
    navigateToPage(id) {
      this.$router.push({
        name: "crag",
        params: { id: id },
      });
    },
  },
};
</script>

<style>
/* #map {
  width: 100%;
  height: 400px;
} */
</style>