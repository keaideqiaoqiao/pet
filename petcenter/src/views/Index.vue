<template>
    <div class="index">
        <demos></demos>
        <div class="index_details">
            <div>
                <img src="../assets/tab-1.webp" alt="">
            </div>
            <div class="detail">
                <p class="p1">宠物用品商城<p>
                <p class="p2">我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。起飞页的核心竞争力来自于它集流线式布局方案与可视化内容编辑于一体，支持打字传图、自由拖拽，不需要专业编写代码，您可以随心所欲创建区块、添加组件…</p>
            </div>
        </div>
        <div class="index_details_2">
            <div class="detail_2">
                <p class="p1">品牌视频介绍</p>
                <p class="p2">我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。起飞页的核心竞争力来自于它集流线式布局方案与可视化内容编辑于一体，支持打字传图、自由拖拽，不需要专业编写代码，您可以随心所欲创建区块、添加组件…</p>
            </div>
            <div class="img_vidio">
                <img src="../assets/vidio_1.webp" alt="">
            </div>
        </div>
        <div class="index_dog" id="dog">
            <div class="dog">
                <img src="../assets/D.webp" alt="">狗狗中心
            </div>
            <div class="lab">
                <div class="lab_s" v-for="(item,index) of details" :key="index" @mouseenter="enter(index)"  @mouseleave="leave(index)" >
                    <img class="v-img" :src=item.src >
                    <router-link class="v-r" to="/login">{{item.lname}}</router-link>
                    <p class="v-p">¥{{item.price.toFixed(2)}}</p>
                </div>
            </div>
            <div style="text-align: center;margin-top: 35px">
                <img src="../assets/D1.webp" alt="">
                <img src="../assets/D2.webp" alt="">                
            </div>
        </div>
        <div class="index_dog" style="margin-top: 100px" id="cat">
            <div class="dog">
                <img src="../assets/C.webp" alt="">喵咪中心
            </div>
            <div class="lab">
                <div class="lab_s" v-for="(item,index) of details_c" :key="index" @mouseenter="enter_c(index)" @mouseleave="leave_c(index)">
                    <img  class="v-img" :src=item.src_c>
                    <router-link class="v-r" to="/login">{{item.lname_c}}</router-link>
                    <p class="v-p">¥{{item.price_c.toFixed(2)}}</p>
                </div>
            </div>
            <div style="text-align: center;margin-top: 35px">
                <img src="../assets/C1.webp" alt="">
                <img src="../assets/C2.webp" alt="">                
            </div>
        </div>
        <div class="lb_top">
            <span><img src="../assets/botton_lb1.webp" alt=""></span>
            <strong> 猜你喜欢 </strong>
            <span><img src="../assets/botton_lb2.webp" alt=""></span>
        </div>
        <lunbo></lunbo>
    </div>
</template>
<script>
import Demos from "../components/Demos.vue";
import lunbo from "../components/lunbo.vue";
export default {
  components: {
    Demos,
    lunbo
  },
  data() {
    return {
      details: [],
      details_c: [],
      nub: ""
    };
  },
  mounted() {
    //因为要获取信息，所以请求类型一定是get
    this.axios.get(`/dog`).then(res => {
      this.details = res.data.result;
    }),
      this.axios.get(`/cat`).then(res => {
        this.details_c = res.data.result;
      });
  },
  methods: {
    enter(index) {      
        this.nub = index;
        let x="";
        let srb=this.details[this.nub].srb;
        let src=this.details[this.nub].src;
        x=src;
        this.details[this.nub].src=srb;
        this.details[this.nub].srb=x;
    },
    leave(index) {
        this.nub = index;
        let x="";
        let srb=this.details[this.nub].srb;
        let src=this.details[this.nub].src;
        x=src;
        this.details[this.nub].src=srb;
        this.details[this.nub].srb=x;
    },
        enter_c(index) {      
        this.nub = index;
        let x="";
        let srb_c=this.details_c[this.nub].srb_c;
        let src_c=this.details_c[this.nub].src_c;
        x=src_c;
        this.details_c[this.nub].src_c=srb_c;
        this.details_c[this.nub].srb_c=x;
    },
    leave_c(index) {
        this.nub = index;
        let x="";
        let srb_c=this.details_c[this.nub].srb_c;
        let src_c=this.details_c[this.nub].src_c;
        x=src_c;
        this.details_c[this.nub].src_c=srb_c;
        this.details_c[this.nub].srb_c=x;
    }
  }
};
</script>
<style>
.index .img_vidio {
  position: absolute;
  top: 85px;
  right: 20px;
}
.index .index_details {
  position: relative;
  padding-top: 80px;
  padding-bottom: 100px;
}
.index .index_details_2 {
  position: relative;
  padding-top: 40px;
  padding-bottom: 200px;
}
.index .detail {
  height: 271px;
  width: 500px;
  background-color: #ff8c3f;
  box-shadow: 5px 5px 20px #ff8c3f;
  position: absolute;
  top: 100px;
  right: 20px;
  color: white;
  line-height: 1.5em;
}
.index .detail_2 {
  height: 400px;
  width: 381px;
  background-color: #ff8c3f;
  box-shadow: 5px 5px 20px #ff8c3f;
  color: white;
  line-height: 1.5em;
  margin-left: 350px;
}
.index .p1 {
  font-size: 24px;
  color: rgb(255, 255, 255);
  padding: 40px 0 22px 30px;
}
.index .p2 {
  font-size: 12px;
  font-family: 微软雅黑, Helvetica, Arial, Verdana, sans-serif;
  font-style: normal;
  font-weight: normal;
  padding: 40px 5px 0 20px;
}
.index .dog {
  text-align: center;
  font-family: 微软雅黑;
  font-size: 32px;
  font-weight: normal;
  font-style: normal;
  color: #333333;
  padding: 0 0 15px 0;
  display: block;
  padding: 0 0 15px 0;
  position: relative;
  height: 88px;
}
.index .dog img {
  position: absolute;
  left: 820px;
}
.index .lab {
  display: flex;
  width: 1260px;
  flex-wrap: wrap;
  margin: 0 auto;
  justify-content: space-between;
}
.index .lab_s {
  width: 18%;
}
.index .v-img {
  width: 220px;
  height: 343px;
}
.index .v-r {
  color: #999999;
  display: block;
  text-align: center;
}
.index .v-r:hover {
  color: #333;
}
.index .v-p {
  font-weight: normal;
  color: #ff9003;
  font-family: century gothic;
  text-align: center;
  font-size: 24px;
  word-spacing: normal;
  margin-bottom: 10px;
}
.index .lb_top {
  text-align: center;
  color: rgb(51, 51, 51);
  font-size: 24px;
  letter-spacing: 4px;
  word-wrap: break-word;
  line-height: 1.5em;
  margin-top: 150px;
  margin-bottom: 75px;
}
</style>
