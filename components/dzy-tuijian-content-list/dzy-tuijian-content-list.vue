<template>
	<view>
		<block v-for="(val,index) in tuijianContent" :key="index">
		<view class="grid grid-col-2 tuijian-content-list">
			<view class="grid-list grid-combine-col-2 grid-row-align-center">
				<navigator class="img-navigator" url="../fangyuanxiangqing/fangyuanxiangqing" hover-class="none">
				 <image class="img" :src="val.imgUrl" ></image>
				  </navigator>
				<view class="description">
					<navigator url="../fangyuanxiangqing/fangyuanxiangqing" hover-class="none">
					<view class="v1">{{val.title}}</view>
					<view class="v2">
						<text class="t1">{{val.area}}</text>
						 <text class="t2">{{val.floor}}</text> 
						 <text class="t3">{{val.towards}}</text> <br>
						 <text class="t4">{{val.subwayDistance}}</text>
					</view>
					<view class="v3">
						<text class="t1">{{val.pledge}}</text>
						 <text class="t2">{{val.subway}}</text> 
						 <text class="t3">{{val.veranda}}</text>
					</view>
					<view class="v4">
						<text class="t1">{{val.monthPrice}}</text>
						 <text class="t2">元/月</text>
					</view>
					 </navigator>
				</view>
			</view> 
		</view>
		</block>
	</view>
</template>

<script>
	export default {
		props:['tuijianContent']
	}
</script>

<style lang="scss">
	.grid.tuijian-content-list{
		width:94%;
		margin:0 auto;
		margin-top:15px;
		.grid-list{
			height:auto !important;
			padding:1em;
			box-shadow: 0 2px 5px #ccc;
			.img-navigator{
				display: block;
				width:35%;
				height:100%;
				.img{
					height:100%;
					width:100%;
					border-radius: 15rpx;
				}
			}
			.description{
				padding-left:1em;
				width:65%;
			}
			.description view{
				margin-bottom:3px;
				overflow: hidden;
				text-overflow:ellipsis;
				white-space: nowrap;
			}
			.description .v2{
				color:#C1C1C1;
				font-size:$uni-font-size-sm;
			}
			.description .v2 text{
				margin-right:1em;
			}
			.description .v3{
				color:#6B6B6B;
				font-size:$uni-font-size-sm;
			}
			.description .v3 text{
				margin-right:1em;
			}
			.description .v3 .t1{
				color:#7AE5BB;
			}
			.description .v4{
				color:#FC8B22;
				font-size:$uni-font-size-sm;
			}
		}
	}
</style>
