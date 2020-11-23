<template>
    <div class="find">
        <head-top></head-top>
        <div class="i">
            <input class="i1" type="text" v-model="keyword">
            <input class="i2" type="button" value="百度一下" @click="find">
        </div>
        <div class="lab">
            <div class="lab_v" v-for="(item,index) of details" :key="index">
                <router-link :to="`/shop?lid=${item.lid}`"><img class="v-img" :src=item.src ></router-link> 
                <router-link class="v-r" to="/shop">{{item.lname}}</router-link>
                <p class="v-p">¥{{item.price.toFixed(2)}}</p>
            </div>
        </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      details: [],
      keyword: ""
    };
  },
  methods: {
    find() {
        if (this.keyword) {
        console.log(this.keyword)
        this.axios.get(`/find?keyword=${this.keyword}`).then(res => {
          this.details = res.data.result;
          console.log(this.details)
        });
      }
    }
  }
};
</script>

<style scoped>
.i {
  text-align: center;
  margin-top: 30px;
}
.i1 {
  width: 550px;
  height: 45px;
}
.i2 {
  width: 104px;
  height: 49px;
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;
  line-height: 45px;
  line-height: 44px;
  padding: 0;
  background: 0 0;
  background-color: #ff9003;
  border-radius: 0 10px 10px 0;
  font-size: 17px;
  color: #fff;
  box-shadow: none;
  font-weight: 400;
  border: none;
  outline: 0;
  cursor: pointer;
}
.lab {
  display: flex;
  width: 940px;
  flex-wrap: wrap;
  margin: 0 auto
}
.lab_v {
  width: 25%;
}
.v {
  display: flex;
  width: 228px;
  justify-content: space-around;
  margin-top: 10px;
}
.v-img {
  width: 235px;
  height: 352px;
}
</style>
