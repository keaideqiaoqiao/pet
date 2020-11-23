<template>
    <div class="app_a">
        <div  v-on:mouseover="stop()" v-on:mouseout="move()" class="app">
            <transition-group tag="ul" name="image">
                <li v-for="(items,index) in list" v-show="index===num" :key="index" >
                    <img :src="items.img" alt="">
                </li>
            </transition-group>
        </div>
        <div>
            <div class="app_ul">
                <div class="app_li">
                        <img class="li_img" src="../assets/nav1.webp" alt="">
                        <a href="#/details" class="li_p">狗狗专区</a>
                </div>
                <div class="app_li">
                        <img class="li_img" src="../assets/nav2.webp" alt="">
                        <a href="#/details" class="li_p">喵咪专区</a>
                </div>
                <div class="app_li">
                        <img class="li_img" src="../assets/nav3.webp" alt="">
                        <a href="#/details" class="li_p">主食专区</a>
                </div>
                <div class="app_li">
                        <img class="li_img" src="../assets/nav4.webp" alt="">
                        <a href="#/details" class="li_p">医药专区</a>
                </div>
                <div class="app_li">
                        <img class="li_img" src="../assets/nav5.webp" alt="">
                        <a href="#/details" class="li_p">日用专区</a>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
        data(){
            return{
                data:['1','2'],
                time:'',
                num:0,
                list:[
                    {img:require("../assets/b1.webp")},
                    {img:require("../assets/b2.webp")}
                ]
            }
        },
        methods:{
            play(){
                this.time=setInterval(()=>{
                    this.num++;
                    if(this.num==2){
                        this.num=0
                    }
                },5000)
            },
            change(i){
                this.num=i
            },
            stop(){
                clearInterval(this.time)
            },
            move(){
                this.play();
            }
        },
        created(){
            this.play();
            },

}
</script>


<style scoped>
        .li_p{
            color: black;
            font-size: 18px;
            font-weight: bold;
            font-style: normal;
            vertical-align: bottom;
        }
        .li_img{
            width: 46px;
            height: 40px;
        }
        .app_a{
            position: relative;
        }
        .app_ul{
            z-index: 10000;
            height: 450px;
            width: 268px;
            position: absolute;
            top: 280px;
            right: 250px;
            display: flex;
            flex-direction:column;
            background-color: white;
        }
        .app_li{
            display: flex;
            text-align: center;
            justify-content: space-around;
            padding: 24px;
            align-content: center
        }
        .app{
            height: 922.34px;
            width: 100%;
            display: flex;
            justify-content: center;
            z-index: -10000;
        }
        img{
            width: 100%;
            height: 922.34px;
        }
        li{
            width: 100%;
            height: 922.34px;
            color: white;
            position: absolute;
            z-index: 1000;
        }
        ul{
            width: 100%;
            overflow: hidden;
            position: relative;
        }
        .nav{
            background-color: #c3c3c3;
            color: white;
            margin-left: 10px;
            font-size: 20px;
            border-radius: 50%;
           padding: 0 8px;
            margin-bottom: 10px;
            opacity: 0.5;
        }
        .active{
            opacity: 1;
        }
        li div{
            margin-top: -30px;
        }
        .image-enter-active {
            transition: all 1.5s linear
        }
        .image-leave-active {
            transition: all 1.5s linear;
        }
        .image-enter-to {
            transform: translateX(0);
        }
        .image-enter {
            transform: translateX(100%);
        }
        .image-leave {
            transform: translateX(0);
        }
        .image-leave-to {
            transform: translateX(-100%);
        }
</style>
