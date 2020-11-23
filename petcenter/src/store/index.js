import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios';
import router from '../router'

Vue.use(Vuex)

export default new Vuex.Store({
state: {
    isLogined:localStorage.getItem('isLogined')||0,
    userInfo:JSON.parse(localStorage.getItem('userInfo'))||{},
},
mutations: {
    login_mutations(state,obj){
        state.isLogined =1;
        // 修改登录用户的相关信息
        state.userInfo=obj
      },
    logout_mutations(state){
        state.isLogined=0;
        //修改登录用户信息为空
        state.userInfo={};
      }
},
actions: {
      login_active(context,payload){
        //向服务器发送异步请求
        axios.post('/login',payload).then(res=>{
          if(res.data.code==1){
            //提交Mutations
            context.commit('login_mutations',res.data.userInfo);
            //将用户的登录状态
            localStorage.setItem('isLogined',1);
            localStorage.setItem('userInfo',JSON.stringify(res.data.result[0]))
            context.commit('login_mutations',JSON.stringify(res.data.result[0]));
            router.push('/details');
            location.reload();
          }else{
            alert('账号密码错误')
          }
        })
      }
},
modules: {
}
})