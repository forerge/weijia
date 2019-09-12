<template>
	<view>
		<view class="server-top">保洁服务</view>
		<view class="server-pro">
			<navigator class="server-pro-a" url="javascript:void(0)">
				<image :src="serverUrl+'static/images/tuijian-thumbnail.png'" mode="widthFix"></image>
			</navigator>
			<view  class="server-pro-b">保洁服务打扫</view>
			<view  class="server-pro-c">×1</view>
			<view  class="server-pro-d">¥200</view>
			<view  class="server-pro-e">立即支付</view>
		</view>
	</view>
	
</template>

<script>
	export default {
		data() {
			return {
				serverUrl:this.$commonConfig.serverUrl,
			}
		},
		methods: {
			
		}
	}
</script>

<style>
	@import url("./server.css");
</style>
