function getConnection(){var e=mysql.createConnection({host:"127.0.0.1",user:"root",password:"root",database:"cmpe239_proj",port:3306});return e}var express=require("express"),path=require("path"),logger=require("morgan"),cookieParser=require("cookie-parser"),bodyParser=require("body-parser"),routesBase=require("./routes/index"),analysis=require("./routes/analysis"),twitterSearch=require("./routes/twitterSearch"),app=express();app.set("views",path.join(__dirname,"views")),app.set("view engine","ejs"),app.use(logger("dev")),app.use(bodyParser.json()),app.use(bodyParser.urlencoded({extended:!1})),app.use(cookieParser()),app.use(express["static"](path.join(__dirname,"public"))),app.use("/",routesBase),app.post("/getStats",analysis.getStats),app.post("/tweetMe",function(e,r){twitterSearch(e.body.search,function(e){r.json(e)})}),app.use(function(e,r,t){var s=new Error("Not Found");s.status=404,t(s)}),"development"===app.get("env")&&app.use(function(e,r,t,s){t.status(e.status||500),t.render("error",{message:e.message,error:e})}),app.use(function(e,r,t,s){t.status(e.status||500),t.render("error",{message:e.message,error:{}})}),module.exports=app;var mysql=require("./mysql");exports.getStats=function(e,r){var t=e.param("comp1").toLowerCase(),s=e.param("comp2").toLowerCase(),o="select * from mytable1 where Company_Name like '"+t+"' OR Company_Name like '"+s+"'";mysql.fetchData(function(e,o){e?r.end("An error occurred"):r.render("viewStats",{data:o,company1:t,company2:s},function(e,t){r.end(e?"An error occurred":t)})},o)};var express=require("express"),router=express.Router();router.get("/",function(e,r,t){r.render("index",{title:"Express"})}),module.exports=router;var ejs=require("ejs"),mysql=require("mysql");exports.fetchData=function(e,r){var t=getConnection();t.query(r,function(r,t,s){r||e(r,t)}),t.end()};var util=require("util"),twitter=require("twit"),sentimentAnalysis=require("./twitterSentimentAnalysis.js"),config={consumer_key:"WhYExrBdjaQKyArMvJhxjHiHt",consumer_secret:"WZ81G6ADuk2RJgGRVMsRZMGgJcUudbC7W2xdhTTx1Miqbhr68y",access_token_key:"2433226039-ALNzRIdqRR3StA2GZSXyPDuMJMhp5rm604BWktz",access_token_secret:"nwUXQJsFraf4wd2SB8ls3BKQiB5uAWVEWO1Ea6cLk9ifB"};module.exports=function(e,r){var t=new twit(config),s=[];t.search(e,function(e){for(var t=0;t<e.statuses.length;t++){var o={};o.tweet=e.statuses[t],o.sentiment=sentimentAnalysis(e.statuses[t].text)}r(s)})};var sentiment=require("sentiment");module.exports=function(e){return sentiment(e)};var express=require("express"),router=express.Router();router.get("/",function(e,r,t){r.send("respond with a resource")}),module.exports=router;
//function getConnection(){var e=mysql.createConnection({host:"127.0.0.1",user:"root",password:"universe",database:"cmpe239_proj",port:3306});return e}var express=require("express"),path=require("path"),logger=require("morgan"),cookieParser=require("cookie-parser"),bodyParser=require("body-parser"),routesBase=require("./routes/index"),analysis=require("./routes/analysis"),twitterSearch=require("./routes/twitterSearch"),app=express();app.set("views",path.join(__dirname,"views")),app.set("view engine","ejs"),app.use(logger("dev")),app.use(bodyParser.json()),app.use(bodyParser.urlencoded({extended:!1})),app.use(cookieParser()),app.use(express["static"](path.join(__dirname,"public"))),app.use("/",routesBase),app.post("/getStats",analysis.getStats),app.post("/tweetMe",function(e,r){twitterSearch(e.body.search,function(e){r.json(e)})}),app.use(function(e,r,t){var s=new Error("Not Found");s.status=404,t(s)}),"development"===app.get("env")&&app.use(function(e,r,t,s){t.status(e.status||500),t.render("error",{message:e.message,error:e})}),app.use(function(e,r,t,s){t.status(e.status||500),t.render("error",{message:e.message,error:{}})}),module.exports=app;var mysql=require("./mysql");exports.getStats=function(e,r){var t=e.param("comp1").toLowerCase(),s=e.param("comp2").toLowerCase(),o="select * from mytable1 where Company_Name like '"+t+"' OR Company_Name like '"+s+"'";mysql.fetchData(function(e,o){e?r.end("An error occurred"):r.render("viewStats",{data:o,company1:t,company2:s},function(e,t){r.end(e?"An error occurred":t)})},o)};var express=require("express"),router=express.Router();router.get("/",function(e,r,t){r.render("index",{title:"Express"})}),module.exports=router;var ejs=require("ejs"),mysql=require("mysql");exports.fetchData=function(e,r){var t=getConnection();t.query(r,function(r,t,s){r||e(r,t)}),t.end()};var util=require("util"),twitter=require("twit"),sentimentAnalysis=require("./twitterSentimentAnalysis.js"),config={consumer_key:"WhYExrBdjaQKyArMvJhxjHiHt",consumer_secret:"WZ81G6ADuk2RJgGRVMsRZMGgJcUudbC7W2xdhTTx1Miqbhr68y",access_token_key:"2433226039-ALNzRIdqRR3StA2GZSXyPDuMJMhp5rm604BWktz",access_token_secret:"nwUXQJsFraf4wd2SB8ls3BKQiB5uAWVEWO1Ea6cLk9ifB"};module.exports=function(e,r){var t=new twit(config),s=[];t.search(e,function(e){for(var t=0;t<e.statuses.length;t++){var o={};o.tweet=e.statuses[t],o.sentiment=sentimentAnalysis(e.statuses[t].text)}r(s)})};var sentiment=require("sentiment");module.exports=function(e){return sentiment(e)};var express=require("express"),router=express.Router();router.get("/",function(e,r,t){r.send("respond with a resource")}),module.exports=router;