<template>
    <div class="footer">
        <div class="footer-one">
            <div class="footer-top">
                <img src="../assets/footer-car.webp" alt="">
                <div>
                    <div class="big">速享</div>
                    <div class="small">尽享便捷服务</div>
                </div>
            </div>
                        <div class="footer-top">
                <img src="../assets/footer-aixin.webp" alt="">
                <div>
                    <div class="big">普惠</div>
                    <div class="small">诚意惠及大众</div>
                </div>
            </div>
                        <div class="footer-top">
                <img src="../assets/footer-3.webp" alt="">
                <div>
                    <div class="big">专业</div>
                    <div class="small">十年专注母婴</div>
                </div>
            </div>
                        <div class="footer-top">
                <img src="../assets/footer-4.webp" alt="">
                <div>
                    <div class="big">品质</div>
                    <div class="small">正规品质保障</div>
                </div>
            </div>
        </div>
        <div class="footer-two">
            <ul class="my-ul">
                <li><h2> <a href="#">新手指南</a> </h2></li>
                <li> <a href="#">购物流程</a> </li><br>
                <li><a href="#">会员介绍</a></li><br>
                <li><a href="#">积分制度</a></li>
            </ul>
            <ul class="my-ul">
                <li><h2> <a href="#">物流配送</a> </h2></li>
                <li> <a href="#">配送服务</a> </li><br>
                <li><a href="#">验货签收</a></li><br>
                <li><a href="#">合作快递</a></li>
            </ul>
            <ul class="my-ul">
                <li><h2> <a href="#">支付方式</a> </h2></li>
                <li> <a href="#">货到付款</a> </li><br>
                <li><a href="#">在线支付</a></li><br>
                <li><a href="#">现金账户</a></li>
            </ul>
            <ul class="my-ul">
                <li><h2> <a href="#">售后服务</a> </h2></li>
                <li> <a href="#">赔偿承诺</a> </li><br>
                <li><a href="#">发票制度</a></li><br>
                <li><a href="#">退货政策</a></li>
            </ul>
            <ul class="my-ul">
                <li><h2> <a href="#">常见问题</a> </h2></li>
                <li> <a href="#">购物问题</a> </li><br>
                <li><a href="#">账户安全</a></li><br>
            </ul>
            <ul class="my-ul">
                <li><h2> <a href="#">联系我们</a> </h2></li>
                <li> <a href="#">联系客服</a> </li><br>
                <li><a href="#">意见反馈</a></li><br>
            </ul>
        </div>
    </div>
</template>
<style>
.footer{
    background-image:url(../assets/footer.webp);
    width: 100%;
    height: 321px;
}
.footer>.footer-one{
    display: flex;
    flex-direction:row;
    justify-content:space-around;
    padding-top: 40px;
    padding-bottom:40px;
    border-bottom:sandybrown solid 1px
}
.footer .footer-top{
    display: flex;
}
.footer .big{
    font-size: 18px;
    font-weight: normal;
    font-style: normal;
    color: #ffffff;
    padding: 0 0 2px 6px;
    padding: 0 0 2px 6px;
}
.footer .small{
    font-size: 14px;
    font-weight: normal;
    font-style: normal;
    color: #ffffff;
    display: block;
    padding: 0 0 6px 6px;
}
.footer a{
    color: white
}
.footer .footer-two{
    display: flex;
    justify-content: space-around
}
.footer .my-ul{
    display: flex;
    flex-direction: column;
    width: 75px;
    justify-content: center;
    text-align: center;
    font-size:12px ;
}
.footer h2{
        font-size: 16px;
}
</style>
