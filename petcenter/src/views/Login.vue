<template>
    <div class="login">
        <head-top></head-top>
        <div>
            <img class="login-img" src="../assets/login_left.webp" alt="">
        </div>
        <div class="login-right">
            <div class="right-h2">
                <div>商城登录</div>
            </div>
            <div class="right-i1">
                <input class="imput-t" type="text" placeholder="用户名" v-model="uname">
            </div>
            <div>
                <input class="imput-t" type="text" placeholder="密码" v-model="upwd">
            </div>
            <div class="right-h3">
                <input type="checkbox">请记住我
            </div>
            <div>
                <input class="right-h4" type="button" value="登录" @click="handle">
            </div>
            <div>
                <router-link to="/register"><input class="right-h5" type="button" value="注册"></router-link>
            </div>
            <a class="last" href="#">忘记密码？点这里找回</a>
        </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      uname: "",
      upwd: ""
    };
  },
  methods: {
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
    handle() {
      if (this.checkuname() && this.checkupwd()) {
        let str='uname='+this.uname+'&upwd='+this.upwd;
        this.$store.dispatch('login_active',str)
      }
    }
  }
};
</script>

<style>
.login {
  position: relative;
  height: 800px;
}
.login div {
  padding-bottom: 5px;
}
.login .login-img {
  position: absolute;
  left: 360px;
}
.login .login-right {
  width: 400px;
  height: 500px;
  box-shadow: 0px 0px 20px #dddddd;
  background-color: #f7f7f7;
  position: absolute;
  right: 200px;
  text-align: center;
}
.login .login-right .right-h2 {
  font-size: 25px;
  font-weight: normal;
  font-style: normal;
  color: #000;
  padding: 40px 0 20px 0;
}
.login .imput-t {
  width: 308px;
  height: 30px;
}
.login .right-i1 {
  padding-bottom: 20px;
}
.login .right-h3 {
  color: #888;
  font-size: 12px;
  position: relative;
  left: -121px;
  padding-top: 10px;
  padding-bottom: 30px;
}
.login .right-h4 {
  width: 308px;
  height: 38px;
  background: #ff9003 !important;
  border: 1px solid #ff9003 !important;
  color: #ffffff !important;
  box-shadow: inset 0 1px #ff9003 !important;
}
.login .right-h5 {
  width: 308px;
  height: 38px;
  background: #ffffff !important;
  border: 1px solid #ff9003 !important;
  color: #ff9003 !important;
  box-shadow: inset 0 1px #ffffff !important;
}
.login .last {
  position: relative;
  color: #333;
  font-size: 12px;
  left: 86px;
}
</style>
