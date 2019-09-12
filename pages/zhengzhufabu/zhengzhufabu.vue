<template>
	<view class="zhengzhufabu">
		<nav-top-return title="整租发布"/>
		<!-- 上传图片框 -->
		<view class="uploadImgFrame">
			<columnTitle class="column-title" columnTitle="基本信息(发布后不可更改)" backgroundColor="#5E5E5E" color="#fff"/>
			<view class="uploadImg">
				<view class="uploadImgBtn">
					<image :src="serverUrl+'static/images/xiangji.png'" mode="widthFix"></image>
					<text>上传图片</text>
				</view> 
			</view>
		</view>
		<columnTitle columnTitle="基本信息"/>
		<view class="grid grid-col-4 base-msg">
			<view class="grid-list combine-col-4">
					<text class="select-title">小区</text>
					<text class="select-btn">填写小区名称</text>
			</view>
			<view class="grid-list  combine-col-4">
					<text class="select-title">面积</text>
					<text class="select-btn">请填写</text>
			</view>
			<view class="grid-list">
					<text class="select-title">厅室</text>
					<text class="select-btn">请选择</text>
					<view class="right-short-line"></view>
			</view>
			<view class="grid-list combine-col-2">
					<text class="select-title">朝向</text>
					<text class="select-btn">请选择</text>
					<view class="right-short-line"></view>
			</view>
			<view class="grid-list">
					<text class="select-title">楼层</text>
					<text class="select-btn">请选择</text>
			</view>
			<view class="grid-list combine-col-2" >
					<text class="select-title">车位</text>
					<text class="select-btn">有无车位</text>
					<view class="right-short-line"></view>
			</view>
			<view class="grid-list combine-col-2" >
					<text class="select-title">电梯</text>
					<text class="select-btn">有无电梯</text>
			</view>
		</view>
		<!-- 租金详情 -->
		<columnTitle columnTitle="租金详情"/>
		<view class="grid grid-col-2 base-msg">
			<view class="grid-list combine-col-2">
					<text class="select-title">月租金</text>
					<text class="select-btn">请填写<text class="reminder-msg">押一付一</text></text>
			</view>
			<view class="grid-list  combine-col-2">
					<text class="select-title">租金包含费用（物业费等）</text>
					<text class="select-btn">请选择</text>
			</view>
		</view>
		<!-- 联系人 -->
		<columnTitle columnTitle="联系人"/>
		<view class="grid grid-col-4 base-msg">
			<view class="grid-list combine-col-2">
					<text class="select-btn">请填写姓名</text>
			</view>
			<view class="grid-list combine-col-2 row-row-col-align">
					<label class="radio active">
						男士
						<radio value="男士" checked=true />
					</label>
					<label class="radio">
						女士
						<radio value="女士" checked=false />
					</label>
			</view>
			<view class="grid-list combine-col-4">
					<text class="select-title">您的身份</text>
					<text class="select-btn">请选择</text>
			</view>
			<view class="grid-list  combine-col-4">
					<text class="select-title">为保护隐私，您的真实号码将被隐藏</text>
					<text class="select-btn">123-****-789<text class="reminder-msg">已验证</text></text>
			</view>
			<view class="grid-list combine-col-3 col-left-col-align">
					<text class="select-title">中介勿扰</text>
					<text class="select-btn">开启后将有效减少中介来电</text>
			</view> 
			<view class="grid-list row-right-col-align">
					<radio value="yes" checked=true color="#F7A00C"/>
			</view>
			<view class="grid-list combine-col-3 col-left-col-align">
					<text class="select-title">接听时段</text>
					<text class="select-btn">只在所选时间内接收来电</text>
			</view>
			<view class="grid-list row-right-col-align">
					<text class="select-btn">7:00-18:00</text>
			</view>
		</view>
		<view style="padding:25px 0;background:#fff;">
		<bigButonYellow big_button_yellow="下一步"/>
		</view>
	</view>
</template>

<script>
	import navTopReturn from "../../components/dzy-nav-top-return/dzy-nav-top-return.vue";
	import columnTitle from "../../components/dzy-column-title/dzy-column-title.vue";
	import bigButonYellow from "../../components/yw-big-buton-yellow/yw-big-buton-yellow.vue";
	export default {
		components:{
			navTopReturn,
			columnTitle,
			bigButonYellow
		},
		data() {
			return {
				//获取自定义$commonConfig对象中的服务器地址
				serverUrl:this.$commonConfig.serverUrl,
			};
		}
	}
</script>

<style lang="scss">
// 图片上传
.zhengzhufabu{
	background: #E7E7E7;
	.column-title{
		margin-top:1em;
	}
	.uploadImgFrame{	
		.uploadImg{
			@include row-row-col-align;
			width:100%;
			height:350rpx;
			background: #C9C9C9;
			.uploadImgBtn{
				width:150px;
				height:150px;
				border-radius: 75px;
				text-align:center;
				background:#fff;		
				@include col-row-col-align;
				image{
					width:60px;
				}
				text{
					font-size:$uni-font-size-base;
					margin-top:1em;
				}
			}
		}
	}
	.base-msg{
		background:#fff;
		.grid-list{
			height:75px !important;
			border-top:1px solid #E9E9E9;
			position: relative;
			@include col-row-col-align;
			&.row-row-col-align{
				@include row-row-col-align;
				.radio{
					display: block;
					line-height:30px;
					height:30px;
					width:60px;
					text-align: center;
					border:1px solid #A6A6A6;
					box-sizing:border-box;
					font-size:$uni-font-size-sm;
					&:nth-child(1){
						border-radius: 15px 0 0 15px;
						border-right-style: none;
					}
					&:nth-child(2){
						border-radius:  0 15px 15px 0 ;
						border-left-style: none;
					}
					&.active{
						border:none;
						color:#fff;
						background: #F24151;
					}
					radio{
						display: none;
					}
				}
			}
			&.col-left-col-align{
				@include col-left-col-align;
				padding-left:1em;
			}
			&.row-right-col-align{
				@include row-right-col-align;
				padding-right:1em;
			}
			.select-title{
				display: block;
				font-size:$uni-font-size-sm;
				margin-bottom:0.5em;
			}
			.select-btn{
				position: relative;
				display: block;
				font-size:$uni-font-size-base;
				color:#A4A4A4;
				.reminder-msg{
					position: absolute;
					padding:1px 6px;
					font-size:$uni-font-size-sm-minus;
					right:-7em;
					border-radius: 6px;
					color:#fff;
					background-color: #67E2B3;
				}
			}
			.right-short-line:after{
				$height:calc(100% /3);
				position: absolute;
				content: "|";
				color:#E9E9E9;
				height:$height;
				right:0;
				top:$height;
			}
		}
	}
}
</style>
