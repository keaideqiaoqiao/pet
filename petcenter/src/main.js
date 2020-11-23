import Vue from 'vue'
import App from './App.vue'
import router from './router'
import axios from 'axios'
import store from './store'
import qs from 'qs'
import MyHeader from './components/Header.vue'
import MyFooter from './components/Footer.vue'
import Head_top from './components/Head_top.vue'
import top from "./components/top.vue";

axios.defaults.baseURL = 'http://127.0.0.1:3000'
Vue.prototype.axios = axios;
Vue.prototype.qs=qs;

Vue.component("my-header",MyHeader)
Vue.component("my-footer",MyFooter)
Vue.component("head-top",Head_top)
Vue.component("top",top)
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
