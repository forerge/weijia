<template>
	<view></view>
</template>

<script>
	export default {
	data() {
		return {
			//获取自定义$commonConfig对象中的服务器地址
			serverImgUrl:this.$commonConfig.serverImgUrl,
		}
	},
	onLoad(){
		var role = uni.getStorageSync('weijia_role');
		var status = uni.getStorageSync('weijia_status');
		if(status == false){
			uni.redirectTo({
			    url: '../login/login'
			});
		}else if(role == 1){
			uni.redirectTo({
			    url: '../fangke-center/fangke-center'
			});
		}else if(role == 2){
			uni.redirectTo({
			    url: '../fangdong-center/fangdong-center'
			});
		}else if(role == 3){
			uni.redirectTo({
			    url: '../zhiyefangdong/zhiyefangdong'
			});
		}else if(role == 4){
			uni.redirectTo({
			    url: '../zhiyejingjiren/zhiyejingjiren'
			});
		}
		
	}, 
	}
</script>

<style>
</style>
