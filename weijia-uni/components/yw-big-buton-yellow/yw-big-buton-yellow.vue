<template>
	<view>
		<view class="big_button_yellow" >{{big_button_yellow}}</view>
	</view>
</template>

<script>
	export default {
		props:['big_button_yellow'],
		data() {
			return {
				
			};
		}
	}
</script>

<style lang="scss">
.big_button_yellow{
	height:64rpx;
	font-size: 16px;
	line-height: 64rpx;
	width:475rpx;
	margin:0 auto;
	color:#362F0C;
	background:#FDE648;
	border-radius: 30px;
	text-align: center;
	margin-bottom: 32rpx;
}
</style>
