<template>
	<view>
		<view class="grid grid-col-3 pro-order">
			<view class="grid-list grid-row-align-left">
			<image class="col1 row1 img" :src="serverUrl+'static/images/tuijian-thumbnail.png'"></image>
			</view>
			<view class="grid-list grid-combine-col-2 grid-col-align-left-space-between">
				<view  class="col2 row1 grid-line-clamp-1">保洁服务打扫</view>
				<view  class="col2 row2">×1</view>
				<view  class="grid-row-align-space-between-center col2 row3"><text  class="t1">¥200</text> <text  class="t2">立即支付</text></view>
			</view>
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

<style lang="scss">
	@import "../../common/order-pay";
</style>
