<template>
	<view>
	
		<image class="img" :src="serverUrl+'static/images/no-contract.png'" mode="widthFix"></image>
		
		<view class="text">亲你目前暂无履行中的合同</view>
	</view>
</template>

<script>
	export default {
		
		data() {
			return {
				//获取自定义$commonConfig对象中的服务器地址
				serverUrl:this.$commonConfig.serverUrl,
				
			};
		}
	}
</script>

<style lang="scss" scoped>
.img{
	display: block;
	width:30%;
	margin:100rpx auto 0;
}
.text{
	line-height:90px;
	text-align: center;
	color:#F98747;
}
</style>
