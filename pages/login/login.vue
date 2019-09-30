<template>
	<view>
		<image class="logoImg" :src="serverImgUrl+'logo.png'" mode="widthFix"></image>
		
		<view class="grid grid-col-2 form">
			<view class="grid-list grid-combine-col-2">
				<input type="text" value=""  placeholder="请输入手机号"/>
			</view>
			<view class="grid-list grid-combine-col-2">
				<input type="text" value=""  placeholder="请输入密码"/>
			</view>
		</view>
		
		
		<bigButonYellow big_button_yellow="登录"/>
		<view class="grid grid-col-2 otherBtnBox">
			<view class="grid-list grid-combine-col-2 grid-row-align-space-between-center">
					<text class="text">快速注册</text>
					<text class="text">找回密码</text>
			</view>
		</view>
	</view>
</template>

<script>
		import bigButonYellow from "@/components/yw-big-buton-yellow/yw-big-buton-yellow.vue";
	export default {
		components:{
			bigButonYellow,
		},
		data() {
			return {
				//获取自定义$commonConfig对象中的服务器地址
				serverImgUrl:this.$commonConfig.serverImgUrl,
			};
		}
	}
</script>

<style lang="scss" scoped>
.logoImg{
	display: block;
	width:120px;
	margin:2em auto;
}
.grid.form{
	width:90%;
	margin:0 auto;
		.grid-list{
			margin-top:1em;
			margin-bottom:1em;
			input[type='text']{
				width:475rpx;
				display: block;
				margin:0 auto;
				box-sizing: border-box;
				padding:3px 6px;
				border-bottom:1px solid #707070;
			}
		}
}
.grid.otherBtnBox{
	width:475rpx;
	margin:0 auto;
	margin-top:-1.5em;
	.grid-list{
		.text{
			color:#626261;
		}
	}
}

</style>
