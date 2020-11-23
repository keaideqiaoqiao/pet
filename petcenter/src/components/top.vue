<template>
<div :class="{animation_top}" id="toTop" href="#" v-show="btnFlag" class="go-top" @click="backTop">
    <i><img src="../assets/R-3 (1).png"></i>
    <i><img src="../assets/R-3 (2).png"></i>
    <i><img src="../assets/R-3 (3).png"></i>
    <i><img src="../assets/R-3 (4).png"></i>
</div>
</template>

<script>
export default {
data () {
return {
scrollTop: 0,
btnFlag:false,
animation_top:false
}
},
// vue的两个生命钩子，这里不多解释。
// window对象，所有浏览器都支持window对象。它表示浏览器窗口，监听滚动事件
mounted () {
window.addEventListener('scroll', this.scrollToTop)
},
destroyed () {
window.removeEventListener('scroll', this.scrollToTop)
},
methods: {
// 点击图片回到顶部方法，加计时器是为了过渡顺滑
backTop () {
const that = this
let timer = setInterval(() => {
let ispeed = Math.floor(-that.scrollTop / 15)
document.documentElement.scrollTop = document.body.scrollTop = that.scrollTop + ispeed
if (that.scrollTop === 0) {
clearInterval(timer)
}
}, 16)
},
// 为了计算距离顶部的高度，当高度大于60显示回顶部图标，小于60则隐藏
scrollToTop () {
const that = this
let scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop
that.scrollTop = scrollTop
if (that.scrollTop > 60) {
that.btnFlag = true;
that.animation_top=true;
} else {
that.btnFlag = false
}
}
}
}
</script>

<style>
#toTop{
position: fixed;
right: 50px;
top: 50%;
transition: all 0.6s;
width: 50px;
height: 50px;
border-radius: 50%;
cursor: pointer;
text-align: center;
z-index: 10000;
}
#toTop>i>img{
margin-top: 18px;
}
.animation_top{
animation:fadeInRight 1s;
}
</style>

