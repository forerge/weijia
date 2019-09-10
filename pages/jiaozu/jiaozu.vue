<template>
	<view>
		<view class="server-pro">
			<navigator class="server-pro-a" url="javascript:void(0)">
				<image :src="serverUrl+'static/images/tuijian-thumbnail.png'" mode="widthFix"></image>
			</navigator>
			<view  class="server-pro-b">合租.运河小区 3居室 1厅1卫</view>
			<view  class="server-pro-c"><text>门牌号</text></text>404</view>
			<view  class="server-pro-d">¥2000</view>
			<view  class="server-pro-e" @click="payMoney">立即支付</view>
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
			payMoney(){
				console.log('aaa')
			}
		}
	}
</script>

<style>
	@import url(../server/server.css);
</style>
