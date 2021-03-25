<template>
  <div id="app">
    <cocktailsearch v-on:search-item="searchItem" />
  </div>
</template>

<script>
import cocktailsearch from '@/components/CocktailSearch.vue'

export default {
  components: { cocktailsearch },
  data: function() {
    return {
      item: ""
    }
  },
  methods: {
    searchItem: function(item) {
      console.log("hello!");
      fetch(`https://www.thecocktaildb.com/api/json/v1/1/search.php?s=${item}`)
      .then(response => response.json())
      .then(data => {
        console.log(data);
      });
    },
  },
};
</script> 