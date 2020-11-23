<template>
    <div class="head_top">
        <div class="top">
            <span class="s1">欢迎访问宠物用品商城！</span>
            <div class="right"  v-if="this.$store.state.isLogined == 1">
                <span>您好,{{this.$store.state.userInfo.uname}}</span>
                <button class="bt" @click="logout">注销</button>
            </div>
            <div class="right" v-else>
                <span>请登录！！</span>
            </div>
        </div>
        <div class="top_2">
        </div>
    </div>
</template>
<script>
export default {
    methods:{
      logout(){
        this.$store.commit('logout_mutations');
        localStorage.clear();
      }   
    }
}
</script>``

<style>
.head_top .top{
    background-color: #eeeeee;
    height: 140px;
    padding-top: 15px;
    display: flex;
    position: relative;
}
.head_top .top img{
    width: 16px;
    height: 16px;
}
.head_top .top_2{
    height: 18px;
}
.head_top .s1{
    position: absolute;
    left: 250px;
    font-size: 12px
}
.head_top span{
    position: absolute;
    right: 300px;
    padding-right: 15px
}
.head_top .right{
    display: inline-block;
    z-index: 100000;
}
.head_top .bt{
    background: #eeeeee;
    border: none
}
</style>


