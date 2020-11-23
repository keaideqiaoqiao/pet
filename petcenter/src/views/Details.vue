<template>
    <div class="details">
        <head-top></head-top>
        <div class="a">
            <div style="margin-right:35px">
            <div class="left">
                <div class="left_is">
                    <img style="width: 16px;height: 16px;padding-right:20px" src="../assets/shuye.webp" alt="">
                    <span style="font-weight: 700;">相关推荐</span>
                </div>
            </div>
            <div class="left_v">
                <div class="v"  v-for="(item,index) of details" :key="index">
                    <img style="width: 79px;height:95px;padding-right:5px" :src=item.src>
                    <div>
                        <a style="font-size:12px" href="#">{{item.lname}}</a>
                        <p style="font-size: 18px;color: #ff9003;">¥{{item.price}}</p>
                        <a style="color:black" href="#">立即购买</a>                        
                    </div>
                </div>
            </div>                
            </div>
            <div>
                <img src="../assets/details_0.webp">
                <div class="lab">
                    <div class="lab_v" v-for="(item,index) of details" :key="index">
                        <router-link :to="`/shop?lid=${item.lid}`"><img class="v-img" :src=item.src ></router-link> 
                        <router-link class="v-r" to="/shop">{{item.lname}}</router-link>
                        <p class="v-p">¥{{item.price.toFixed(2)}}</p>
                    </div>
                </div>      
                <div style="text-align: end;margin-bottom:30px">
                  <input class="fy" :class="page==1?'ac':''" @click="one(1)" type="button" value="1">
                  <input class="fy" :class="page==2?'ac':''" @click="two(2)" type="button" value="2">
                </div>                             
            </div>            

        </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      page: 1,
      details: []
    };
  },
  mounted() {
    //因为要获取信息，所以请求类型一定是get
    this.axios.get(`/list?page=` + this.page).then(res => {
      this.details = res.data.result;
    });
  },
  methods: {
    one(x) {
      this.page=x;
      this.axios.get(`/list?page=` + x).then(res => {
        this.details = res.data.result;
      });
    },
    two(x) {
      this.page=x;
      this.axios.get(`/list?page=` + x).then(res => {
        this.details = res.data.result;
      });
    }
  }
};
</script>

<style>
.details .a {
  margin-top: 50px;
  display: flex;
  justify-content: center;
}
.details a {
  color: #999999;
}
.details .left {
  color: #ffffff;
  background-color: #ff9003;
  width: 250px;
  border-radius: 40px;
}
.details .left_is {
  text-align: center;
  height: 50px;
  line-height: 50px;
}
.details .v {
  display: flex;
  width: 228px;
  justify-content: space-around;
  margin-top: 10px;
}
.details .v-img {
  width: 235px;
  height: 352px;
}
.details .lab {
  display: flex;
  width: 940px;
  flex-wrap: wrap;
}
.details .lab_v {
  width: 25%;
}
.details .v-r {
  color: #999999;
  display: block;
  text-align: center;
  font-size: 12px;
}
.details .v-p {
  font-weight: normal;
  color: #ff9003;
  font-family: century gothic;
  font-size: 20px;
  text-align: center;
}
.details .fy{
    border: 1px solid transparent;
    color: #ffffff;
    font-size: 16px;
    line-height: 15px;
    margin-right: 3px;
    width: 21px;
    height: 24px;
    margin-right: 10px;
}
.details .fy:hover{
  background-color: #ff9003;
  cursor:pointer;
}
.details .ac{
  background-color: #ff9003;
}
</style>
