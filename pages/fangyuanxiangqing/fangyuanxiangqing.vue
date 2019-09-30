<template>
	<view>
		<goodsDetailsImgSlide :imgUrl="goodsDetailsImg"/>
		<view class="grid grid-col-2 head">
			<view class="grid-list grid-combine-col-2 grid-col-align-left-space-between">
				<text class="title grid-line-clamp-1">合租.运河新村 3居室.1厅.1卫</text>
				<text class="price">2300 元/月</text>
				<text class="pay-way">押一付一</text>
			</view>
		</view>
		
		<view class="grid grid-col-2 base-msg">
			<view class="grid-list grid-combine-col-2 title">
				<text >基本信息</text>
			</view>
			<view class="grid-list grid-combine-col-2 grid-row-align-left-center summarize">
				<text class="text text1">首次出租</text>
				<text class="text text2">离地铁近</text>
				<text class="text text3">有阳台</text>
			</view>
			<view class="grid-list grid-row-align-left-center base-parameter">
				<text class="text1">面积：</text>
				<text class="text2">15m/80m²</text>
			</view>
			<view class="grid-list grid-row-align-left-center base-parameter">
				<text class="text1">朝向：</text>
				<text class="text2">3室1厅1卫</text>
			</view>
			<view class="grid-list grid-row-align-left-center base-parameter">
				<text class="text1">楼层：</text>
				<text class="text2">12/18层</text>
			</view>
			<view class="grid-list grid-row-align-left-center base-parameter">
				<text class="text1">户型：</text>
				<text class="text2">3室1厅1卫</text>
			</view>
			<view class="grid-list grid-combine-col-2 grid-row-align-left-center base-parameter">
				<text class="text1">电梯：</text>
				<text class="text2">有</text>
			</view>
			<view class="grid-list grid-combine-col-2 grid-row-align-left-center base-parameter">
				<text class="text1">看房时间：</text>
				<text class="text2">提前预约</text>
			</view>
			<view class="grid-list grid-combine-col-2 grid-row-align-left-center base-parameter">
				<text class="text1">入住日期：</text>
				<text class="text2">可立即入住</text>
			</view>
			<view class="grid-list grid-combine-col-2 grid-row-align-left-center base-parameter">
				<text class="text1">房屋状态：</text>
				<text class="text2">可预约</text>
			</view>
		</view>
		
		<view class="peizhishebei">
			<view class="title">
				<text>配置设施</text>
			</view>
			<view class="grid grid-col-5 grid-fixed-width">
				<view class="grid-list grid-col-align-center active">
					<image class="img" :src="serverImgUrl+'static/images/peizhisheshi-01.png'"></image>
					<text class="text">WiFi</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl+'static/images/peizhisheshi-02.png'"></image>
					<text class="text">床</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl+'static/images/peizhisheshi-03.png'"></image>
					<text class="text">衣柜</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl+'static/images/peizhisheshi-04.png'"></image>
					<text class="text">沙发</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl+'static/images/peizhisheshi-05.png'"></image>
					<text class="text">桌椅</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl+'static/images/peizhisheshi-06.png'"></image>
					<text class="text">洗衣机</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl+'static/images/peizhisheshi-07.png'"></image>
					<text class="text">冰箱</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl+'static/images/peizhisheshi-08.png'"></image>
					<text class="text">暖气</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl+'static/images/peizhisheshi-09.png'"></image>
					<text class="text">热水器</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl+'static/images/peizhisheshi-10.png'"></image>
					<text class="text">可做饭</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl+'static/images/peizhisheshi-11.png'"></image>
					<text class="text">电视</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl+'static/images/peizhisheshi-12.png'"></image>
					<text class="text">空调</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl+'static/images/peizhisheshi-13.png'"></image>
					<text class="text">阳台</text>
				</view>
			</view>
		</view>
		
		<view class="weizhi-and-zhoubian">
			<view class="title">
				<text>位置及周边</text>
			</view>
			<!-- 地图组件 -->
				<showMarkersMap latitude="30.924585" longitude="121.468585" address="运河新村" />
		</view>	
		
		<view class="grid grid-col-2 brief">
			<view class="grid-list grid-combine-col-2 grid-row-align-left-center title">
				<text>房源介绍</text>
			</view>
			<view class="grid-list grid-combine-col-2  description">
				东南朝向，3室1厅1卫， 全天采光。让您时刻感受温暖的阳光。精品装修，卧室宽大家具可任意摆设，空气流通性好;家具齐全可拎包入住;阳台视野开阔，可鸟瞰小区全貌小区环境幽静,绿化率达60%。
			</view>
		</view>
		<!-- 同小区房源 -->
		<view class="housing-resource-title">
				<text>同小区房源</text>
		</view>
		<tuijianContentList  :tuijianContent="tuijianContent"/>	
		<!-- 底部 -->
		<view class="grid grid-col-2 footer">
			<view class="grid-list grid-combine-col-2 grid-row-align-space-between-center">
				<view class="left grid-col-align-center">
					<image class="img" :src="serverImgUrl+'static/images/xinxing.png'" ></image>
					<text>收藏</text>
				</view>
				<navigator class="center" url="../yuyuefangyuan/yuyuefangyuan">预约房源</navigator>
				<text class="right">电话咨询</text>
			</view>
		</view>
	</view>
</template>

<script>
	import goodsDetailsImgSlide from '@/components/dzy-goods-details-img-slide/dzy-goods-details-img-slide.vue'
	import showMarkersMap from "@/components/dzy-show-markers-map/dzy-show-markers-map.vue";
	import tuijianContentList from "@/components/dzy-tuijian-content-list/dzy-tuijian-content-list.vue";
	export default { 
		components:{
			goodsDetailsImgSlide,
			showMarkersMap,
			tuijianContentList
		},
		data() {
			return {
				serverImgUrl:this.$commonConfig.serverImgUrl,
				//头部滑块图片url
				goodsDetailsImg:[
					this.$commonConfig.serverImgUrl+"static/images/tuijian-thumbnail.png",
					this.$commonConfig.serverImgUrl+"static/images/tuijian-thumbnail.png",
					this.$commonConfig.serverImgUrl+"static/images/tuijian-thumbnail.png"
				],
				//推荐内容
				tuijianContent:[
					{
					imgUrl:this.$commonConfig.serverImgUrl+'static/images/tuijian-thumbnail.png',
					title:'合租.天通苑北二区 3居室.1厅.1卫',
					area:'15m²',
					floor:'12/18层',
					towards:'朝南',
					subwayDistance:'距5号线800m',
					pledge:'押一付一',
					subway:'离地铁近',
					veranda:'有阳台',
					monthPrice:'2300'
					},{
					imgUrl:this.$commonConfig.serverImgUrl+'static/images/tuijian-thumbnail.png',
					title:'合租.天通苑北二区 3居室.1厅.1卫',
					area:'15m²',
					floor:'12/18层',
					towards:'朝南',
					subwayDistance:'距5号线800m',
					pledge:'押一付一',
					subway:'离地铁近',
					veranda:'有阳台',
					monthPrice:'2300'
					}
				],
			};
		},
		methods:{
			
		}
	}
	
	
</script>

<style lang="scss" scoped>
.head{
	width:90%;
	margin:1em auto;
	.grid-list{
		height:75px;
		.title{
			font-size:18px;
		}
		.price{
			font-size:14px;
			color:#FC8B23;
		}
		.pay-way{
			font-size:13px;
			color:#68E2B3;
		}
	}
}
.base-msg{
	width:90%;
	margin:2em auto;
	.grid-list{
		&.title{
			font-size:$uni-font-size-lg;
		}
		&.summarize{
			height:3em;
			.text{
				margin-right:2em;
				&.text1{
				color:#79E5BC;
				}
			}
		}
		&.base-parameter{
			height:2em;
			.text1{
				color:#A8A8A8;
				margin-right:2em;
			}
		}
	}
}
.peizhishebei{
	.title{
		width:90%;
		margin:0 auto;
		font-size:$uni-font-size-lg;
	}
	.grid-list{
		height:160rpx;
		opacity:0.2;
		.img{
			width:25px;
			height:25px;
			}
		.text{
			font-size:$uni-font-size-sm;
			text-decoration:line-through;
			margin-top:0.3em;
			}
		&.active{
			opacity:1;
			.text{
				text-decoration:none;
			}
		}
	}
}

.weizhi-and-zhoubian{
	.title{
		width:90%;
		margin:0 auto 1em;
		font-size:$uni-font-size-lg;
	}
}
.brief{
	width:90%;
	margin:0 auto;
	.title{
		height:40px;
		font-size:$uni-font-size-lg;
	}
	.description{
		color:#999999;
		text-indent: 2em;
		text-align: justify;
	}
}

.housing-resource-title{
	width:90%;
	margin:1em auto;
	font-size:$uni-font-size-lg;
}

.footer{
	height:120rpx;
	padding:0 1em;
	border-top:1px solid #F2F2F2;
	margin-top:1em;
	.left{
		.img{
			width:25px;
			height:25px;
		}
	}
	.center,.right{
		padding:6px 12px;
		border-radius: 6px;
	}
	.center{
		background:#67E2B3;
		color:#fff;
	}
	.right{
		background:#FCE649;
		color:#444337;
	}
}
</style>
