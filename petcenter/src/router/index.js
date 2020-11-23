import Vue from 'vue'
import VueRouter from 'vue-router'
import index from '../views/Index.vue'
import details from '../views/Details.vue'
import login from '../views/Login.vue'
import Register from '../views/Register.vue'
import buycar from '../views/Buycar.vue'
import shop from '../views/Shop.vue'
import find from '../views/find.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/find',
    name: 'find',
    component: find
  },
  {
    path: '/shop',
    name: 'shop',
    component: shop
  },
  {
    path: '/buycar',
    name: 'buycar',
    component: buycar
  },
  {
    path: '/register',
    name: 'Register',
    component: Register
  },
  {
    path: '/login',
    name: 'Login',
    component: login
  },
  {
    path: '/',
    name: 'Index',
    component: index
  },
  {
    path: '/details',
    name: 'details',
    component: details
  },
]

const router = new VueRouter({
  routes
})

export default router
