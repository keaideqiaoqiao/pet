<template>
    <div class="car">
        <head-top></head-top>
        <div>
            <div>
                <table class="car_t">
                    <thead>
                        <tr>
                            <th style="width:523px;height:30px">商品</th>
                            <th style="width:139px;height:30px">价格</th>
                            <th style="width:229px;height:30px">数量</th>
                            <th style="width:146px;height:30px">合计</th>
                            <th style="width:152px;height:30px">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="(item,index) of details" :key="index">
                            <td class="cd"><img style="width:90px;height:90px" :src=item.bsrc><span style="padding:25px">{{item.bname}}</span></td>
                            <td class="cp">{{item.bprice.toFixed(2)}}¥</td>
                            <td>
                            <input @click="min(index)" class="bt-2" type="button" value="-">
                            <input class="bt-3" type="text" :value=item.count>
                            <input @click="add(index)" class="bt-2" type="button" value="+">
                            </td>
                            <td>{{(item.bprice.toFixed(2)*item.count).toFixed(2)}}¥</td>
                            <td><span @click="del(index)" class="sc">删除</span></td>
                        </tr>
                    </tbody>
                    <tfoot class="tf">
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                                <span>订单合计:</span><span>{{total}}</span><span>¥</span>
                            </td>
                            <td>
                             <input @click="tot" class="bt-4" type="button" value="合计">
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      details: [],
      x: "",
      total: ""
    };
  },
  methods: {
    add(index) {
      this.details[index].count += 1;
    },
    min(index) {
      if (this.details[index].count > 1) {
        this.details[index].count -= 1;
      }
    },
    del(index) {
      this.x = index;
      let bid = this.details[this.x].bid;
      this.axios.post(`/del`, `bid=${bid}`).then(res => {
        alert(`删除成功`);
        this.axios.get(`/acar`).then(res => {
          this.details = res.data.result;
        });
      });
    },
    tot() {
      let sum = 0;
      for (let i = 0; i < this.details.length; i++) {
        sum += parseInt(this.details[i].bprice * this.details[i].count);
      }
      this.total = sum.toFixed(2);
    }
  },
  mounted() {
    //因为要获取信息，所以请求类型一定是get
    this.axios.get(`/acar`).then(res => {
      this.details = res.data.result;
    });
  }
};
</script>

<style>
.car .car_t {
  width: 1400px;
  margin: 0 auto;
  margin-top: 100px;
  text-align: left;
  font-size: 16px;
  font-weight: normal;
  color: rgb(68, 68, 68);
  font-family: 微软雅黑;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 12px;
  padding-right: 12px;
  border: solid 1px;
  border-color: rgb(221, 221, 221);
  margin-bottom: 50px;
}
.car .cd {
  display: flex;
  align-items: center;
}
.car .cp {
  font-size: 14px;
  font-weight: normal;
  color: #777777;
}
.car .bt-2 {
  width: 26px;
  height: 40px;
  background-color: #ffffff;
  box-shadow: none;
  border: solid 1px rgb(221, 221, 221);
}
.car .bt-3 {
  width: 24px;
  height: 36px;
  text-align: center;
}
.car .sc {
  cursor: pointer;
}
.car .bt-4 {
  font-size: 16px;
  font-weight: normal;
  color: #ffffff;
  border-color: #ff9003;
  background-color: #ff9003;
  padding-top: 9px;
  padding-bottom: 12px;
  background-image: none;
  width: 124px;
  height: 42px;
}
</style>

