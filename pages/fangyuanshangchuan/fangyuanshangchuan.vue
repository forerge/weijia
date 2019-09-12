<template>
	<view>
		<view class="house-warning">
			<view class="house-warning-img">
				<image class="img" :src="serverUrl+'static/images/'+one" mode="widthFix"></image>
			</view>
			<view class="house-warning-word">温馨提示：请正确选择发布信息的分类，分类错误会导致信息违规下架</view>
		</view>
		<view class="house-person" >居民住房</view>
		<view class="house-fenlei" >
			<view class="house-left">
				<image class="img" :src="serverUrl+'static/images/'+two" mode="widthFix"></image>
			</view>
			<view class="house-center">
				<view class="house-c-top" >整租</view>
				<view class="house-c-bottom">一整套房子，也包括房间</view>
			</view>
			<view class="house-right" >＞</view>
		</view>
		<view class="house-fenlei" >
			<view class="house-left">
				<image class="img" :src="serverUrl+'static/images/'+three" mode="widthFix"></image>
			</view>
			<view class="house-center">
				<view class="house-c-top" >合租</view>
				<view class="house-c-bottom">一个房间</view>
			</view>
			<view class="house-right" >＞</view>
		</view>
		<view class="house-fenlei" >
			<view class="house-left">
				<image class="img" :src="serverUrl+'static/images/'+four" mode="widthFix"></image>
			</view>
			<view class="house-center">
				<view class="house-c-top" >房东委托</view>
				<view class="house-c-bottom">委托给经纪人，方便又省心</view>
			</view>
			<view class="house-right" >＞</view>
		</view>
		<view class="house-fenlei" >
			<view class="house-left">
				<image class="img" :src="serverUrl+'static/images/'+five" mode="widthFix"></image>
			</view>
			<view class="house-center">
				<view class="house-c-top" >找室友</view>
				<view class="house-c-bottom">找一起住的人，分摊房租</view>
			</view>
			<view class="house-right" >＞</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				serverUrl:this.$commonConfig.serverUrl,
				one:"lingdang.png",
				two:"nav02.png",
				three:"nav03.png",
				four:"nav07.png",
				five:"nav010.png",
			}
		},
		methods: {
			
		}
	}
</script>

<style lang="scss">
	.house-warning{
		height: 72rpx;
		background: #FEFCED;
		font-size: $uni-font-size-sm-minus;
		line-height: 72rpx;
		color: #F7A677;
		dispaly:flex;
		flex-direction:row;
		justify-content:flex-start;
		display: flex;

	}
	.house-warning-img{
		height: 72rpx;
		width: 54rpx;
		text-align: right;
		line-height: 90rpx;

	}
	.house-person{
		height: 40rpx;
		line-height: 60rpx;
		font-size: 20rpx;
		text-indent: 30rpx;
		color: #999;

	}
	.house-warning-word{
		text-indent: 10rpx
	}
	.house-warning-img image{
		height:30rpx;
		width:30rpx;
	}
	.house-fenlei{
		width: 100%;
		height: 140rpx;
		border-bottom: 1px solid #999;
		display: flex;

		}
	.house-left{
		height: 140rpx;
		width: 80rpx;
		text-align: right;
		flex-grow: 0;

	}
	.house-left image{
		// height:62rpx !important;
		width:56rpx;
		margin-top: 38rpx;

	}
	.house-center{
		height:140rpx;
		flex-grow:1;
	}
	.house-c-top{
		font-size: 24rpx;
		height: 70rpx;
		line-height: 100rpx;
		color: #333;
		font-weight: bold;
		text-indent: 20rpx;

	}
	.house-c-bottom{
		font-size: $uni-font-size-sm;
		height:70rpx;
		line-height: 40rpx;
		color:#666;
		text-indent: 20rpx;
	}
	.house-right{
		height: 140rpx;
		line-height: 140rpx;
		width: 60rpx;
		flex-grow: 0;
		color: #666;

	}
</style>
