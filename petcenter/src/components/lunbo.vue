<template>
    <div id="hehe">
        <ul id="wopei" :style="{left:wori}">
            <li><a href=" "><img src="http://localhost:8080/1.1.webp"></a></li>
            <li><a href=" "><img src="http://localhost:8080/2.1.webp"></a></li>
            <li><a href=" "><img src="http://localhost:8080/3.1.webp"></a></li>
            <li><a href=" "><img src="http://localhost:8080/4.1.webp"></a></li>
            <li><a href=" "><img src="http://localhost:8080/5.1.webp"></a></li>
            <li><a href=" "><img src="http://localhost:8080/6.1.webp"></a></li>
            <li><a href=" "><img src="http://localhost:8080/7.1.webp"></a></li>
            <li><a href=" "><img src="http://localhost:8080/8.1.webp"></a></li>
        </ul>
    </div>
</template>
<script>
export default {
    data(){
        return{
            pp:0,
            wori:""
        }
    },
    mounted(){
        setInterval(()=>{
            this.pp-=320;
            this.wori=this.pp+"px";
            if(this.pp<-960){
            this.pp=320;
            }
        },2000)
    }
}
</script>

<style  scoped>
#hehe{
width: 1280px;
height: 320px;;
overflow: hidden;
position: relative;
margin: 0 auto;
margin-bottom:100px 
}
#wopei{
/* height: ; */
transition: all 0.6s;
width: 2560px;
position: absolute;
/* left: 0; */
}
#wopei>li{
float: left;
list-style: none;
width: 320px;
height: 420px;
box-sizing: border-box;
padding: 0 10px;
}
#wopei>li img{
width: 100%;
height: 100%;
}
</style>
