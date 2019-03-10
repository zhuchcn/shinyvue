<template>
  <div id="app">
    
    <div class="container text-center">
      <img alt="Vue logo" src="./assets/logo.png">
      <h1>Hello Shiny, this is Vue</h1>

      <div class="form-group shiny-input-container">
        <label for="ss">Input</label>
        <input name="ss" type="text" class="form-control" value="" v-model="ss"/>
      </div>

      <pre id="xx" class="shiny-text-output"></pre>

      {{ ss }}

      <div id="plot" class="shiny-plot-output" style="width: 700px; height: 400px"></div>
    </div>
  </div>
</template>

<script>
export default {
  data(){
    return {
      ss: null
    }
  },
  metaInfo: {
    title: "ShinyVue",
    script: [
      { type: 'application/shiny-singletons' },
      { src: 'shared/json2-min.js' },
      { src: 'shared/jquery.min.js' },
      { src: 'shared/shiny.min.js'},
      { src: 'shared/ionrangeslider/js/ion.rangeSlider.min.js' },
      { src: 'shared/strftime/strftime-min.js' },
      { src: 'shinyjs/inject.js' }
    ],
    link: [
      { rel: 'stylesheet', type: 'text/css', href: 'shared/shiny.css' },
      { rel: 'stylesheet', href: 'shared/ionrangeslider/css/ion.rangeSlider.css' },
      { rel: 'stylesheet', href: 'shared/ionrangeslider/css/ion.rangeSlider.skinShiny.css' }
    ]
  }
}
</script>


<style>
</style>
