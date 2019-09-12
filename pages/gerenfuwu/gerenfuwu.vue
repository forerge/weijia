<template>
	<view>
		<view class="person" >
			<view class="person-b">
				<image :src="serverUrl+'static/images/'+downUpImg"></image>
			</view>
			<view class="person-a">
				<view class="person-a-l" >
					<image :src="serverUrl+'static/images/'+headImg" mode="widthFix"></image>
				</view>
				<view class="person-a-c"></view>
				<view class="person-a-r"></view>
			</view>
		</view>
		
	</view>
</template>

<script>
	export default {
		data() {
			return {
				//获取自定义$commonConfig对象中的服务器地址
				serverUrl:this.$commonConfig.serverUrl,
				
				//获取定位城市处->上下图标切换
				downUpImg:"person-fuwu.png",
				headImg:"weijia-yuyue.png",
			}
		},
		methods: {
			
		}
	}
</script>

<style>
	.person{
		height:330rpx;
		width:750rpx;
		position: relative;
	}
	.person-b{
		position: absolute;
		height:330rpx !important;
		width:750rpx;
	}
	.person-b image{
		height:330rpx !important;
		width:750rpx;
	}
	.person-a{
		position: absolute;
		height:330rpx;
		width:750rpx;
		display:flex;
		flex-direction:row;
		align-items:center;
		/* background:url('../../images/person-fuwu.png'); */
		background-size:100% 100%;
	}
	.person-a-l{
		width:120rpx;
		height:120rpx;
		flex-grow:0;
		background:#007AFF;
		margin-left:40rpx;
	}
	.person-a-l image{
		
	}
	.person-a-c{
		height:30rpx;
		flex-grow:1;
		background:#09BB07
	}
	.person-a-r{
		flex-grow:0;
		height:66rpx;
		width:208rpx;
		background:pink;
	}
</style>
