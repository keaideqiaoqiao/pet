<template>
    <div class="shop">
        <head-top></head-top>
        <div class="shop_all">
            <div class="s-top">
                <img style="width:18px;height:18px" src="../assets/house.png">
                <span class="breadcrumb-item"><router-link style="color: #595959;" to="/">首页</router-link></span>
                <span class="breadcrumb-item"><router-link style="color: #595959;" to="/details">主食专区</router-link></span>
                <span class="breadcrumb-item">顺口味 无尘豆腐猫砂6L 快速除臭结团</span>
            </div>
            <div class="details">
                <div>
                    <!-- <img style="width:369px;height:461px;margin-bottom:15px;" :src=img> -->
                    <glass style="width:369px;height:461px;margin-bottom:15px;" :img=img></glass>
                    <div>
                        <img class="small-img" @click="img1" :src=details.src alt="">
                        <img class="small-img" @click="img2" :src=details.srb alt="">
                    </div>
                </div>
                <div class="details_right">
                    <div class="p1">
                        <p>{{details.lname}}</p>                        
                    </div>
                    <div class="p2">
                        <p>品牌: hipidog/嬉皮狗<br>
                           物理形态: 其他<br>
                           适用对象: 通用
                        </p>
                    </div>
                    <div class="p3">
                        <p>¥{{details.price}}</p>
                    </div>
                    <div class="p4">
                        <span style="margin-right:15px">口味:</span>
                        <span class="choose" @click="action=1" :class="action==1?'act':''">绿茶味</span>
                        <span class="choose" @click="action=2" :class="action==2?'act':''">蜜桃味</span>
                    </div>
                    <div>
                        <span @click="handle" style="margin-right:15px"><input class="bt-1" type="button" value="加入购物车"></span>
                        <span>
                            <input class="bt-2" type="button" value="-">
                            <input class="bt-3" type="text" value="1">
                            <input class="bt-2" type="button" value="+">
                        </span>
                    </div>
                    <div class="p6">
                        <p>商品编号： 00010011 </p>
                    </div>
                    <div class="p7">
                        <span>分类：狗狗主粮, 猫咪主粮, 猫咪主食 </span>
                    </div>
                </div>
            </div>
            <div class="dh">
                <div class="daohang">
                    <span style="margin-left:15px" @mouseenter="c=1" :class="{bb:c==1}">详情信息</span>
                    <span style="margin-left:30px" @mouseenter="c=2" :class="{bb:c==2}">用户评价</span>
                </div>
                <div>
                    <div v-show="c==1">
                        <img src="../assets/big.webp" alt="">
                    </div>
                    <div v-show="c==2">
                        <p class="xp">用户还没有评价<br>只有登录购买的用户才能评价！</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import glass from "../components/Glass.vue";
export default {
  data() {
    return {
      img: '',
      action: 1,
      c: 1,
      details:[],
    };
  },
  components: {
    glass
  },
  methods: {
    img1() {
      let img1 = this.details.src;
      this.img = img1;
    },
    img2() {
      let img2 = this.details.srb;
      this.img = img2;
    },
    handle(){
      let lid=this.$route.query.lid;
      this.axios.post('/car',`lid=${lid}`).then(res=>{
        alert(`加入成功`)
    })
    }
  },
  mounted() {
    let lid=this.$route.query.lid;
    //因为要获取信息，所以请求类型一定是get
    this.axios.get(`/shop?lid=${lid}`).then(res => {
      this.details = res.data.result;
      this.img=this.details.src;
    });
  }
};
</script>

<style>
.breadcrumb-item + .breadcrumb-item::before {
  content: ">";
}
.shop .breadcrumb-item {
  color: #595959;
  font-size: 14px;
  font-family: 微软雅黑;
  margin-left: 5px;
}
.shop .shop_all {
  display: flex;
  flex-direction: column;
  width: 1200px;
  margin: 0 auto;
}
.shop .s-top {
  width: 1190px;
  border-bottom: rgb(238, 238, 238) solid 1px;
  margin-top: 30px;
  margin-bottom: 50px;
}
.shop .details {
  display: flex;
}
.shop .small-img {
  width: 82px;
  height: 82px;
  margin-right: 20px;
}
.shop .choose {
  width: 62px;
  height: 26px;
  border: solid 1px;
  margin-right: 5px;
  font-size: 12px;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 12px;
  padding-right: 12px;
  font-weight: normal;
}
.shop .act {
  background-color: #ff9003;
  color: #ffffff;
  border-color: #ff9003;
}
.shop .p1 {
  font-size: 21px;
  font-weight: normal;
  color: #0c0c0c;
  font-family: 微软雅黑;
  margin-bottom: 50px;
}
.shop .details_right {
  margin-left: 30px;
}
.shop .p2 {
  font-size: 13px;
  font-weight: normal;
  color: #999999;
  font-family: 微软雅黑;
  margin-bottom: 30px;
  line-height: 24px;
}
.shop .p3 {
  font-size: 26px;
  font-weight: normal;
  color: #ff9003;
  font-family: 微软雅黑;
  line-height: 26px;
  margin-bottom: 30px;
}
.shop .p4 {
  margin-bottom: 40px;
}
.shop .bt-1 {
  width: 138px;
  height: 46px;
  background-image: none;
  font-size: 14px;
  font-weight: normal;
  color: #ffffff;
  font-family: 微软雅黑;
  border-color: #000000;
  background-color: #000000;
  padding-top: 12px;
  padding-bottom: 15px;
  padding-left: 34px;
  padding-right: 40px;
}
.shop .bt-2 {
  width: 46px;
  height: 46px;
  background-color: #ffffff;
  box-shadow: none;
  border: solid 1px rgb(221, 221, 221);
}
.shop .bt-3 {
  width: 42px;
  height: 42px;
  text-align: center;
}
.shop .p6 {
  font-size: 12px;
  font-weight: normal;
  color: #999999;
  font-family: 微软雅黑;
  border-color: #dddddd;
  border-top: 1px dotted #ddd;
  border-top-width: 1px;
  border-bottom: 1px dotted #ddd;
  border-bottom-width: 1px;
  margin-top: 20px;
  margin-bottom: 10px;
  padding-top: 8px;
  padding-bottom: 8px;
}
.shop .p7 {
  font-size: 14px;
  font-weight: normal;
  color: #999999;
  font-family: 微软雅黑;
}
.shop .dh {
  margin-top: 20px;
}
.shop .daohang {
  width: 900px;
  background-color: rgba(246, 246, 246, 1);
  height: 37px;
  font-family: arial;
  font-size: 16px;
  border-radius: 40px;
  line-height: 37px;
  margin-bottom: 20px;
}
.shop .xp {
  font-size: 13px;
  font-weight: normal;
  color: #666666;
  font-family: 微软雅黑;
  padding-top: 15px;
  border-top: 3px solid #eee;
  margin-bottom: 600px;
}
</style>

