<template>
	<view>
		<view class="column-title" :style="{color:color,backgroundColor: backgroundColor}">{{columnTitle}}</view>
	</view>
</template>

<script>
	export default {
		props:['columnTitle','color','backgroundColor']
	}
</script>

<style lang="scss">
.column-title{
		height:40px;
		background: #fff;
		line-height: 40px;
		font-size: 24rpx;
		text-indent: 2em;
		font-weight: 700;
	}
</style>
