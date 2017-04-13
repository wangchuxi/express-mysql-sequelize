var mysql = require('./mysql')
var Models  = require('../model');
module.exports={
	//向users_peofiles表中增添数据
	add:function(req,res){
		var datas = req.body;
		// console.log("req.body==>>",datas.sex)

		mysql.connection.query('INSERT INTO user_profiles SET ?',datas, function (error, results, fields){
		  if (error) throw error;
		  console.log('The solution is: ', results);

		  return res.json({code:0,message:"插入成功！"})
		});
	},
		//向users_accounts表中增添数据
	Accounts:function(req,res){
		var datas = req.body;
		console.log("req.body==>>",datas)
		var data_insert = {}
		if(datas.mobile){                         //用来过滤传过来的多余参数，数据库里只储存
			data_insert.mobile = datas.mobile,
			data_insert.password = datas.password
		};
		// if(datas.mobile == datas.password){
		3// 	return res.json({code:1202,message:"密码和账号不能重复"})
		// }
		console.log("data_insert>>>",data_insert)

		if(!data_insert.mobile&&!data_insert.password){
			return res.json({code:1000,message:"参数没有传递！"})
		}

		// data_insert.
		console.log("req.body==>>",data_insert)
		mysql.connection.query('INSERT INTO user_accounts SET ?',data_insert, 
		function (error,results,fields) {
			for(var a in error){
				console.log("error 挂载了多少个方法",a)
			}
			// if(error) return console.log("--->",error);
			if(error) return res.json({code:9999,message:"插入失败！",errors:error});
			console.log('The solution is:', results);

			return res.json({code:0,message:"插入完成 ！"})
		});
	},
// 	-- 表station 两个 id  表station中不包含 字段a=b 的 查询出来，只显示id
// SELECT s.id from station s WHERE id in (13,14) and user_id not in (4);
	SelectConditionID: function(req,res){
		var uid = req.params.uid;
		if (uid >= 3){
			return res.json({code:1203,message:"你不是管理员，无法拉取数据"})
		}
		// console.log("req.params.uid------->",uid)
		mysql.connection.query('SELECT s.id from user_accounts s WHERE id in (?,?) and mobile not in (?)',[1,2,115],function (error,results,fields) {
			if(error) throw error;
			console.log('The solution is:', results);
			// console.log("dddddd------->",error);
			return res.json({code:0,message:"拉取成功 !"})
		});

	},
	Delete:function(req,res){
		// var datas = req.body;
		// mysql.connection.query('DELETE ')
	}
}	