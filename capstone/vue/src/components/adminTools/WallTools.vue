<template>
  <div>
    <v-sheet class="red mb-5">
      <h1>Admin TOOL BAR</h1>
      <!-- Turn into a dialogue box -->
      <!--  Delete wall and all child routes in progress -->
      <v-row class="justify-space-around">
        <v-btn small @click="deleteWall"> Delete Wall</v-btn>

        <!-- Edit wall info -->
        <v-btn small @click.stop="dialog = true"> Edit Info </v-btn>

        <v-dialog v-model="dialog" persistent max-width="600px">
          <v-card>
            <v-form>
              <v-text-field
                clearable
                label="Wall Name"
                v-model="updatedWall.name"
              ></v-text-field>
              <v-text-field
                clearable
                label="Description"
                v-model="updatedWall.description"
              ></v-text-field>
              <v-btn @click.stop="updateWall">Submit</v-btn>
              <v-btn @click.stop="cancelChanges">Cancel</v-btn>
            </v-form>
          </v-card>
        </v-dialog>

        <!-- add route -->
        <v-btn small @click.stop="dialog2 = true">Add Route</v-btn>

        <v-dialog v-model="dialog2" persistent max-width="600px">
          <v-card>
            <v-form>
              <v-text-field
                clearable
                label="Route Name"
                v-model="newRoute.name"
              ></v-text-field>
              <v-text-field
                clearable
                label="Grade"
                v-model="newRoute.grade"
              ></v-text-field>
              <v-text-field
                clearable
                label="height"
                v-model="newRoute.height"
              ></v-text-field>
              <v-text-field
                clearable
                label="style"
                v-model="newRoute.style"
              ></v-text-field>
              <v-text-field
                clearable
                label="protection"
                v-model="newRoute.protection"
              ></v-text-field>
              <v-text-field
                clearable
                label="description"
                v-model="newRoute.description"
              ></v-text-field>
              <v-btn @click="saveRoute">Submit</v-btn>
              <v-btn @click="cancelRoute">Cancel</v-btn>
            </v-form>
          </v-card>
        </v-dialog>
      </v-row>
    </v-sheet>
  </div>
</template>

<script>
import locationService from "../../services/LocationService.js";
export default {
  name: "wall-tools",
  data() {
    return {
      dialog2: false,
      dialog: false,
      wall: {},
      updatedWall: {},
      newRoute: {},
    };
  },
  created() {
    this.loadWall();
    this.dialog = false;
    this.dialog2 = false;
  },
  methods: {
    loadWall() {
      locationService.getWallById(this.$route.params.id).then((response) => {
        if (response.status == 200) {
          this.wall = response.data;
          this.$store.commit("SET_ACTIVE_WALL", this.wall);
          this.resetUpdatedWall();
          this.cancelRoute();
        }
      });
    },
    //Saves updates to wall
    updateWall() {
      locationService.updateWall(this.updatedWall).then((response) => {
        if (response.status == 200) {
          window.alert("Wall updated");
          this.$router.go(0);
        } else {
          window.alert("Uh-oh, something went wrong trying to update the wall");
        }
      });
      this.dialog = false;
      this.resetUpdatedWall();
    },

    //helper function. resets wall information at submit or cancel or created
    resetUpdatedWall() {
      this.updatedWall = {
        id: this.wall.id,
        cragId: this.wall.cragId,
        name: this.wall.name,
        description: this.wall.description,
      };
    },

    //ADDS NEW ROUTE TO WALL
    saveRoute() {
      locationService.saveRoute(this.newRoute).then((response) => {
        if (response.status == 201) {
          window.alert("route saved!");
          this.$router.go(0);
        } else {
          window.alert("something went wrong saving the route");
        }
      });
      this.cancelRoute();
    },
    // DELETES WALL AND CHILD ROUTES
    deleteWall() {
      if (
        confirm(
          "Are you sure you want to delete this Wall and all routes on it? This cannot be undone!!"
        )
      ) {
        let cragId = this.wall.cragId;
        this.$store.state.routes.forEach((r) => {
          if (r.wallId == this.wall.id) {
            this.$store.commit("DELETE_ROUTE", r.id);
          }
        });
        this.$store.commit("DELETE_WALL", this.wall.id);
        this.$router.push({ name: "crag", params: { id: cragId } });
      }
    },
    cancelChanges() {
      this.dialog = false;
      this.resetUpdatedWall();
    },

    cancelRoute() {
      this.newRoute = {
        wallId: this.wall.id,
        name: "",
        grade: "",
        height: "",
        style: "",
        protection: "",
        description: "",
      };
      this.dialog2 = false;
    },
  },
};
</script>

<style>
</style>