
<template>
  <div>
    <h1>Verseny infromációk</h1>
    <div v-for="(teamsrace, index) in carsWithTrips" :key="`car${index}`">
      <h2>
        {{ teamsrace.teamId }} ({{ teamsrace.place }}) {{ teamsrace.id }} 
      </h2>
      <ul>
        <li v-for="(trip, index) in car.trips" :key="`trip${index}`">
          {{ trip.date }}: {{ trip.numberOfMinits }} perc
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
import { useUrlStore } from "@/stores/url";
import { useLoginStore } from "@/stores/login";
const storeUrl = useUrlStore();
const storeLogin = useLoginStore();
export default {
  data() {
    return {
      storeUrl,
      storeLogin,
      carsWithTrips: [],
    };
  },
  mounted() {
    this.getCarsWithTrips();
  },
  methods: {
    async getCarsWithTrips() {
      let url = this.storeUrl.urlCarsWithTrips;
      const config = {
        method: "GET",
        headers: {
          Authorization: `Bearer ${this.storeLogin.accessToken}`,
        },
      };
      const response = await fetch(url, config);
      const data = await response.json();
      this.carsWithTrips = data.data;
    },
  },
};
</script>
<style>
</style>
