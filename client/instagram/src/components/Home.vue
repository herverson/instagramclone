<template>
<v-row>
    <v-col cols="12" sm="6" offset-sm="3">
      <v-card>
        <v-container fluid>
          <v-row>
            <v-col
              v-for="photo in photos"
              :key="photo.id"
              class="d-flex child-flex"
              cols="4"
            >
              <v-card flat tile class="d-flex">
                <v-img
                  :src="photo.imageUrl"
                  aspect-ratio="1"
                  class="grey lighten-2"
                >
                  <template v-slot:placeholder>
                    <v-row
                      class="fill-height ma-0"
                      align="center"
                      justify="center"
                    >
                      <v-progress-circular indeterminate color="grey lighten-5"></v-progress-circular>
                    </v-row>
                  </template>
                </v-img>
              </v-card>
            </v-col>
          </v-row>
        </v-container>
      </v-card>
    </v-col>
  </v-row>
</template>

<script>
import axios from 'axios/dist/axios'
export default {
  name: 'Home',
  // components: {
  //   Product,
  //   Category
  // },
  data: () => ({
    photos: [],
  }),
  mounted() {
  },
  methods: {
  },
  created() {
    axios({
      url: 'http://localhost:4000/graphiql',
      method: 'post',
      data: {
        query: 
        ` {
            photos {
              id
              imageUrl
            } 
          }
        `
      }
    }).then(response => {
      const query = response.data.data;
      this.photos = query.photos;
    });
  }
}
</script>
