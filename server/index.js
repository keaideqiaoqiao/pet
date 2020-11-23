
// 加载Express模块
const express = require(`express`);
//加载CORS模块
const cors = require('cors'); 
// 加载MYSQL
const mysql=require('mysql');
//body-parser
const bodyParser=require('body-parser');
//创建MySQL连接池
const pool=mysql.createPool({
    host:'127.0.0.1',
    port:'3306',
    user:'root',
    upwd:'',
    database:'pet',
    charset:'utf8',
    connectionLimit:20
})
//创建WEB服务器实例
const app=express();
//将bodyParser作为中间件
app.use(bodyParser.urlencoded({extended:false}));
//将CORS作为app的中间件
app.use(cors({
    origin:['http://localhost:8080','http://127.0.0.1:8080']
}))
//登录
app.post('/login',(req,res)=>{
  let uname=req.body.uname;
  let upwd=req.body.upwd;
  let sql='SELECT upwd,uname FROM pet_user WHERE uname=? AND upwd=?';
  pool.query(sql,[uname,upwd],(err,result)=>{
      if(err) throw err;
      if(result.length>0){
          res.send({message:'suc',code:1,result:result})
      }else{
          res.send({message:'flase',code:0})
      }
  })
})
//注册
app.post('/register',(req,res)=>{
    let uname=req.body.uname;
    let upwd=req.body.upwd;
    let phone=req.body.phone;
    let sql='SELECT COUNT(uid) AS count FROM pet_user WHERE uname=?';
    pool.query(sql,[uname],(err,result)=>{
        if(err) throw err;
        if(result[0].count == 0 ){
            sql='INSERT INTO pet_user(uname,upwd,phone) VALUES(?,?,?)';
            pool.query(sql,[uname,upwd,phone],(err,result)=>{
                if(err) throw err;
                res.send({massage:'suc',code:1})
            })         
        }else{
            res.send({massage:'false',code:0})
        }
    })
})

app.get('/list',(req,res)=>{
    let page=req.query.page;
    let pagesize=12;
    let offset=(page-1)*12;
    let sql=`SELECT lid,lname,price,src,srb from pet_lab LIMIT ?,?`;
    pool.query(sql,[offset,pagesize],(err,result)=>{
        if (err) throw err;
        res.send({massage:"suc",result:result})
    })
})
//狗
app.get('/dog',(req,res)=>{
    let sql=`SELECT lid,lname,price,src,srb from pet_lab`
    pool.query(sql,(err,result)=>{
        if (err) throw err;
        res.send({massage:"suc",result:result})
    })
})
//猫
app.get('/cat',(req,res)=>{
    let lid_c=req.query.lid_c;
    let lname_c=req.query.lname_c;
    let price_c=req.query.price_c;
    let src_c=req.query.src_c;
    let srb_c=req.query.srb_c;
    let sql=`SELECT lid_c,lname_c,price_c,src_c,srb_c from pet_cat`
    pool.query(sql,(err,result)=>{
        if (err) throw err;
        res.send({massage:"suc",result:result})
    })
})
app.get('/shop',(req,res)=>{
    let lid=req.query.lid;
    let lname=req.query.lname;
    let price=req.query.price;
    let src=req.query.src;
    let srb=req.query.srb;
    let sql=`SELECT lname,price,src,srb from pet_lab  where lid=?`
    pool.query(sql,[lid],(err,result)=>{
        if (err) throw err;
        res.send({massage:"suc",result:result[0]})
    })
})
app.post('/car',(req,res)=>{
    let lid=req.body.lid;
    let sql=`insert into pet_car(bname,bprice,bsrc) select lname,price,src from pet_lab where lid=?`;
    pool.query(sql,[lid],(err,result)=>{
        if (err) throw err;
        res.send({massage:"suc",code:1})
    })
})
app.get('/acar',(req,res)=>{
    let sql=`SELECT bid,bname,bprice,bsrc,count from pet_car`
    pool.query(sql,(err,result)=>{
        if (err) throw err;
        res.send({massage:"suc",result:result})
    })
})
app.post('/del',(req,res)=>{
    let bid=req.body.bid;
    let sql=`DELETE FROM pet_car WHERE bid=?`;
    pool.query(sql,[bid],(err,result)=>{
        if (err) throw err;
        res.send({massage:"suc",result:result})
    })
})
//搜索
app.get('/find',(req,res)=>{
    let keyword=req.query.keyword
    let key=`%${keyword}%`
    let sql=`SELECT lid,lname,price,src,srb from pet_lab where lname like ?`
    pool.query(sql,[key],(err,result)=>{
        if (err) throw err;
        res.send({massage:"suc",result:result})
    })
})
//指定WEB服务器监听的端口
app.listen(3000);