<template>
    <div class="register">
        <head-top></head-top>
        <div>
            <img class="register-img" src="../assets/login_left.webp" alt="">
        </div>
        <div class="register-right">
            <div class="right-h2">
                <div>商城注册</div>
            </div>
            <div class="right-i1">
                <input class="imput-t" type="text" placeholder="昵称" v-model="uname">
            </div>
            <div>
                <input class="imput-t" type="text" placeholder="电话" v-model="phone">
            </div>
            <div>
                <input class="imput-t" type="text" placeholder="密码" v-model="upwd">
            </div>
            <div>
                <input class="imput-t" type="text" placeholder="确认密码" v-model="conupwd">
            </div>
            <div>
                <input class="right-h5" type="button" value="注册" @click="handle">
            </div>
            <a class="last" href="#">忘记密码？点这里找回</a>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            uname: "",
            upwd: "",
            phone:"",
            conupwd: "",
        }
    },
  methods: {
    //单击免费注册按钮时校验表单
    handle(){
      //会引发短路现象
      if(this.checkuname() && this.checkupwd() && this.checkConupwd()){
        //现在要发送相关的用户名、密码到WEB服务器
        this.axios.post('/register',`uname=${this.uname}&upwd=${this.upwd}&phone=${this.phone}`).then(res=>{
          if(res.data.code=="1"){
            this.$router.push('/login')
          }else{
            alert("用户已经存在")
          }
        })
      }
    },
    //检测用户名
    checkuname() {
      let uname = this.uname;
      let unameReg = /^[0-9a-zA-Z]{6,12}$/;
      if (unameReg.test(uname)) {
        return true;
      } else {
        return false;
      }
    },
    //检测密码
    checkupwd() {
      let upwd = this.upwd;
      let upwdReg = /^[0-9A-Za-z\.\-_]{6,15}$/;
      if (upwdReg.test(upwd)) {
        return true;
      } else {
        return false;
      }
    },
    //检测两次密码是否一致
    checkConupwd() {
      //校验两次密码是否一致
      let upwd = this.upwd;
      let conupwd = this.conupwd;
      if (upwd == conupwd) {
        return true;
      } else {
        return false;
      }
    },
  },
}
</script>

<style>
.register{
    height: 800px
}
.register div{
    padding-bottom:20px
}
.register .register-img{
    position: absolute;
    left: 360px;
}
.register .register-right{
    width: 400px;
    height: 500px;
    box-shadow: 0px 0px 20px #dddddd;
    background-color: #f7f7f7;
    position: absolute;
    right: 200px;
    text-align: center
}
.register .register-right .right-h2{
    font-size: 25px;
    font-weight: normal;
    font-style: normal;
    color: #000;
    padding: 40px 0 20px 0
}
.register .imput-t{
    width: 308px;
    height: 30px;
    background-color: #f7f7f7;
    border: 1px solid rgb(221, 221, 221)
}
.register .right-h3{
    color: #888;
    font-size: 12px;
    position: relative;
    left: -121px;
    padding-top:10px ;
    padding-bottom:30px;
}
.register .right-h4{
    width: 308px;
    height: 38px;
    background: #ff9003 !important;
    border: 1px solid #ff9003 !important;
    color: #ffffff !important;
    box-shadow: inset 0 1px #ff9003 !important;
}
.register .right-h5{
    width: 308px;
    height: 38px;
    background: #ffffff !important;
    border: 1px solid #ff9003 !important;
    color: #ff9003 !important;
    box-shadow: inset 0 1px #ffffff !important;
}
.register .last{
    position: relative;
    color: #333;
    font-size: 12px;
    left: 86px; 
}
</style>
