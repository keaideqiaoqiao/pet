<template>
     <div class="header">
        <div>
            <span>
                <img src="../assets/logo.webp" alt="">
            </span>
        </div>
        <div class="nav">
                <ul class="chooce">
                    <li>
                        <router-link to="/">首页</router-link>
                    </li>
                    <li>
                        <router-link to="/details">狗狗专区</router-link>
                    </li>
                    <li>
                        <router-link to="/">喵咪专区</router-link>
                    </li>
                    <li>
                        <router-link to="/">主食专区</router-link>
                    </li>
                     <li>
                        <router-link to="/">医药专区</router-link>
                    </li>
                    <li>
                        <router-link to="/find">搜索</router-link>
                    </li>
                    <li>
                        <router-link to="/buycar">购物车</router-link>
                    </li>
                    <li>
                        <router-link to="/login">登录</router-link>
                    </li>
                </ul>
        </div>
     </div>
</template>

<script>
export default {
    data(){
        return{
            
        }
    }
}
</script>


<style>
.header .a{
    background-color: black;
    border-radius: 40px
}
.header{
    text-align: center;
    position: absolute;
    top: 0;
    z-index: 10000;
    left: 50%;
    transform: translateX(-50%);
    height: 172px;
}
.header>.nav{
    height: 70px;
    width: 1400px;
    background-color:#ff9003; 
    text-align: center;
    margin: 0 auto;
    border-radius: 40px
}
.header img{
        height: auto;
        max-height: 58px;
        padding: 20px 0 ;
}
.header a{
    color: white;
}
.header>.nav>.chooce {
    padding-left:0px; 
    margin: 0 auto;
    height: 100%;
    display: flex;
    flex-direction:row;
    justify-content:space-around;
    align-items: center;
}
.header>.nav>.chooce li{
    height: 100%;
    width: 140px;
    line-height: 70px;
}
.header>.nav>.chooce li:hover{
    background-color: black;
    border-radius: 40px
}
.header .right{
    position: fixed;
    right: -300px;
}
.header .right img{
    padding: 0;
    margin: 0
}
</style>

