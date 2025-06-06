<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 充值 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>充值</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<!-- layui -->
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		#swiper {
			overflow: hidden;
		}
		#swiper .layui-carousel-ind li {
			width: 16px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 3px;
			background-color: #f7f7f7;
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
		#swiper .layui-carousel-ind li.layui-this {
			width: 24px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 0;
			background-color: rgba(110,22,64,1);
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
		
		.index-title {
		    text-align: center;
		    box-sizing: border-box;
		    width: 980px;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    flex-direction: column;
		}
	
		.index-title span {
			padding: 0 10px;
			line-height: 1.4;
		}
		.center-container .layui-nav-tree {
			width: 100%;
		}
		.center-container .layui-nav {
			position: inherit;
		}
		.center-container .layui-nav-tree .layui-nav-item {
			height: 54px;
			line-height: 54px;
			font-size: 14px;
			color: rgba(204, 204, 204, 1);
			border-width: 4px 4px 4px 1px;
			border-style: solid;
			border-color: rgba(204, 204, 204, 1);
			border-radius: 0;
			background-color: #fff;
			box-shadow: 0 0 6px rgba(255,0,0,0);
			text-align: center;
		}
		.center-container .layui-nav-tree .layui-nav-bar {
			height: 54px !important;
			opacity: 0 !important;
		}
		.center-container .layui-nav-tree .layui-nav-item.layui-this {
			font-size: 14px;
			color: rgba(38, 115, 121, 1);
			border-width: 4px 4px 4px 1px;
			border-style: solid;
			border-color: rgba(38, 115, 121, 1);
			border-radius: 0;
			background-color: rgba(255, 255, 255, 1);
			box-shadow: 0 0px 0px 0px #267379;
		}
		.center-container .layui-nav-tree .layui-nav-item:hover {
			font-size: 14px;
			color: rgba(38, 115, 121, 1);
			border-width: 4px 4px 4px 1px;
			border-style: solid;
			border-color: rgba(38, 115, 121, 1);
			border-radius: 0;
			background-color: rgba(255, 255, 255, 1);
			box-shadow: 0 0 0px rgba(255,0,0,0);
		}
		.center-container .layui-nav-tree .layui-nav-item a {
			line-height: inherit;
			height: auto;
			background-color: inherit;
			color: inherit;
			text-decoration: none;
		}	
		.right-container {
			position: relative;
		}
		
		.right-container .layui-form-item {
			display: flex;
			align-items: center;
		}
		.right-container .layui-input-block {
			margin: 0;
			flex: 1;
		}
		.right-container .input .layui-input {
			padding: 0 12px;
			height: 40px;
			font-size: 14px;
			color: #333;
			border-radius: 0;
			border-width: 1px;
			border-style: solid;
			border-color: rgba(140, 149, 112, 1);
			background-color: #fff;
			box-shadow: 0 0 0px rgba(110,22,64,.8);
			text-align: left;
		}
		.right-container .select .layui-input {
			padding: 0 12px;
			height: 40px;
			font-size: 14px;
			color: #333;
			border-radius: 0;
			border-width: 1px;
			border-style: solid;
			border-color: rgba(140, 149, 112, 1);
			background-color: #fff;
			box-shadow: 0 0 0px rgba(110,22,64,.8);
			text-align: left;
		}
		.right-container .date .layui-input {
			padding: 0 12px;
			height: 40px;
			font-size: 14px;
			color: #333;
			border-radius: 0;
			border-width: 1px;
			border-style: solid;
			border-color: rgba(140, 149, 112, 1);
			background-color: #fff;
			box-shadow: 0 0 0px rgba(110,22,64,.8);
			text-align: left;
		}
		
		.l-redio .layui-form-radio {
			margin: 0;
		}
		.l-redio .layui-form-radio>i {
			font-size: 16px;
			color: #DCDFE6;
		}
		.l-redio .layui-form-radio>div {
			font-size: 14px;
			color: #606266;
		}
		.l-redio .layui-form-radioed>i {
			font-size: 16px;
			color: rgba(39, 115, 121, 1);
		}
		.l-redio .layui-form-radioed>div {
			font-size: 14px;
			color: rgba(39, 115, 121, 1);
		}
	</style>
	<body style="background: #EEEEEE;">

		<div id="app">

			<!-- 轮播图 -->
			<div class="layui-carousel" id="swiper" :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 auto","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid"}'>
			  <div carousel-item id="swiper-item">
				<div v-for="(item,index) in swiperList" :key="index">
					<img style="width: 100%;height: 100%;object-fit:cover;" :src="item.img" />
				</div>
			  </div>
			</div>
			<!-- 轮播图 -->

			<!-- 标题 -->
			<div class="index-title" :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"10px auto","borderColor":"rgba(24, 172, 183, 1)","backgroundColor":"rgba(38, 115, 121, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"32px","borderWidth":"2px","fontSize":"20px","borderStyle":"solid","height":"auto"}'>
			  <span>USER / ADDRESS</span><span>收货地址添加</span>
			</div>
			<!-- 标题 -->

			<div class="center-container">
				<!-- 个人中心菜单 config.js-->
				<div class="left-container">
					<ul class="layui-nav layui-nav-tree">
						<li v-for="(item,index) in centerMenu" v-bind:key="index" class="layui-nav-item" :class="item.url=='../shop-address/list.jsp'?'layui-this':''">
							<a :href="'javascript:window.location.href=\''+item.url+'\''">{{item.name}}</a>
						</li>
					</ul>
				</div>
				<!-- 添加地址表单 -->
				<div class="right-container" :style='{"padding":"20px","boxShadow":"0px 0px 0px rgba(110,22,64,.8)","margin":"0","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0","borderStyle":"solid"}'>
					<form style="margin-top: 20px;" class="layui-form" lay-filter="myForm">
						<div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0","borderStyle":"solid"}' class="layui-form-item layui-form-text">
							<label :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"14px","color":"#333","textAlign":"right"}' class="layui-form-label">联系人：</label>
							<div class="layui-input-block input">
								<input type="text" name="name" id="name" required lay-verify="required" placeholder="联系人" autocomplete="off"
								 class="layui-input">
							</div>
						</div>
						<div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0","borderStyle":"solid"}' class="layui-form-item layui-form-text">
							<label :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"14px","color":"#333","textAlign":"right"}' class="layui-form-label">手机号码：</label>
							<div class="layui-input-block input">
								<input type="text" name="phone" id="phone" required lay-verify="required|phone" placeholder="手机号码" autocomplete="off"
								 class="layui-input">
							</div>
						</div>
						<div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0","borderStyle":"solid"}' class="layui-form-item layui-form-text l-redio">
							<label :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"14px","color":"#333","textAlign":"right"}' class="layui-form-label">默认地址：</label>
							<div class="layui-input-block" style="width: 300px;text-align: left;">
								<input type="radio" name="isdefault" value="是" title="是" checked>
								<input type="radio" name="isdefault" value="否" title="否">
							</div>
						</div>
						<div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0","borderStyle":"solid"}' class="layui-form-item layui-form-text">
							<label :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"14px","color":"#333","textAlign":"right"}' class="layui-form-label">地址：</label>
							<div class="layui-input-block input">
								<input type="text" name="address" id="address" required lay-verify="required" placeholder="地址" autocomplete="off"
								 class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<div class="layui-input-block"  style="display: flex;flex-wrap:wrap;">
								<button style="outline:none" :style='{"padding":"0 10px","boxShadow":"6px 0 0px 4px #267379","margin":"20px","borderColor":"rgba(38, 115, 121, 1)","backgroundColor":"rgba(255, 255, 255, 1)","color":"rgba(38, 115, 121, 1)","borderRadius":"0","borderWidth":"1px","width":"10%","fontSize":"14px","borderStyle":"solid","height":"44px"}' class="layui-btn btn-submit" lay-submit lay-filter="*">添加</button>
								<button style="outline:none" :style='{"padding":"0 10px","boxShadow":"6px 0 0px 4px #CCCCCC","margin":"20px","borderColor":"#ccc","backgroundColor":"#fff","color":"rgba(204, 204, 204, 1)","borderRadius":"0","borderWidth":"1px","width":"10%","fontSize":"14px","borderStyle":"solid","height":"44px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
							</div>
						</div>
					</form>
				</div>
			</div>

		</div>

		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>

		<script>
			var jquery = $;

			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					centerMenu: centerMenu
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 200) {
								return val.substring(0, 200).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})

			// 初始化地图插件
			jquery(document).ready(function() {
			});

			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'laypage'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var laypage = layui.laypage;
				var form = layui.form;

				var limit = 10;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img class="swiper-item" style="width: 100%;height: 100%;object-fit:cover;" src="' + http.baseurl+item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
						vue.$nextTick(() => {
						  carousel.render({
						  	elem: '#swiper',
							width: '100%',
						  	height: '250px',
						  	arrow: 'hover',
						  	anim: 'default',
						  	autoplay: 'true',
						  	interval: '3000',
						  	indicator: 'none'
						  });
						
						})
					}
				});


				// 表单校验
				form.verify({
					phone: function(value, item) {
						if (!isMobile(value)) {
							return '请输入正确的手机号码'
						}
					},
				});

				// 提交表单
				form.on('submit(*)', function(data) {
					data = data.field;
					data.userid = localStorage.getItem('userid');
					console.log(data);
					http.requestJson(`address/add`, 'post', data, function(data) {
						layer.msg('添加成功', {
							time: 2000,
							icon: 6
						}, function() {
							window.history.go(-1);
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
