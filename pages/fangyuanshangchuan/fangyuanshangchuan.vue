<template>
	<view>
		<view class="house-warning row-items-left-center">
			<image class="house-warning-img" :src="serverImgUrl+'static/images/lingdang.png'" mode="widthFix"></image>
			<text class="house-warning-word">温馨提示：请正确选择发布信息的分类，分类错误会导致信息违规下架</text>
		</view>
		<view class="house-person" >居民住房</view>
		<view class="house-fenlei" >
			<view class="house-left">
				<image class="img" :src="serverImgUrl+'static/images/nav02.png'" mode="widthFix"></image>
			</view>
			<view class="house-center">
				<view class="house-c-top" >整租</view>
				<view class="house-c-bottom">一整套房子，也包括房间</view>
			</view>
			<navigator url="../zhengzhufabu/zhengzhufabu" hover-class="none">
			<view class="house-right" >＞</view>
			</navigator>
		</view>
		<view class="house-fenlei" >
			<view class="house-left">
				<image class="img" :src="serverImgUrl+'static/images/nav03.png'" mode="widthFix"></image>
			</view>
			<view class="house-center">
				<view class="house-c-top" >合租</view>
				<view class="house-c-bottom">一个房间</view>
			</view>
			<navigator url="../zhengzhufabu/zhengzhufabu" hover-class="none">
			<view class="house-right" >＞</view>
				</navigator>
		</view>
		<view class="house-fenlei" >
			<view class="house-left">
				<image class="img" :src="serverImgUrl+'static/images/nav07.png'" mode="widthFix"></image>
			</view>
			<view class="house-center">
				<view class="house-c-top" >房东委托</view>
				<view class="house-c-bottom">委托给经纪人，方便又省心</view>
			</view>
				<navigator url="../fangdongweituo/fangdongweituo1" hover-class="none">
			<view class="house-right" >＞</view>
				</navigator>
		</view>
		<view class="house-fenlei" >
			<view class="house-left">
				<image class="img" :src="serverImgUrl+'static/images/nav010.png'" mode="widthFix"></image>
			</view>
			<view class="house-center">
				<view class="house-c-top" >找室友</view>
				<view class="house-c-bottom">找一起住的人，分摊房租</view>
			</view>
			<navigator url="../zhaoshiyou/zhaoshiyou" hover-class="none">
			<view class="house-right" >＞</view>
				</navigator>
		</view>
	</view>
</template>

<script>
	export default {
		
		data() {
			return {
				serverImgUrl:this.$commonConfig.serverImgUrl
			}
		} 
	}
</script>

<style lang="scss">
	.house-warning{
		background: #FEFCED;
		font-size: $uni-font-size-sm-minus;
		height: 60rpx;
		color: #F7A677;
	}
	.house-warning-img{
		width:30rpx;
		margin-left:1em;
	}
	.house-warning-word{
		text-indent: 1em;
	}
	.house-person{
		height: 40rpx;
		line-height: 60rpx;
		font-size: $uni-font-size-sm;
		text-indent: 30rpx;
		color: #999;
	}
	.house-fenlei{
		width: 100%;
		height: 140rpx;
		border-bottom: 1px solid #F0F0F0;
		display: flex;

		}
	.house-left{
		height: 140rpx;
		width: 80rpx;
		text-align: right;
		flex-grow: 0;

	}
	.house-left .img{
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
		flex-grow: 0;
		color: #666;
		width: 50px;
		text-align: center;
	}
</style>
