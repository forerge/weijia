 <template>
	<view>
		<goodsDetailsImgSlide :imgUrl="goodsDetailsImg" />
		<view class="grid grid-col-2 head">
			<view class="grid-list grid-combine-col-2 grid-col-align-left-space-between">
				<text class="title grid-line-clamp-1">合租.运河新村 3居室.1厅.1卫</text>
				<text class="price">{{ house_detail.h_money }} 元/月</text>
				<text class="pay-way">{{ house_detail.h_rule }}</text>
			</view>
		</view>

		<view class="grid grid-col-2 base-msg">
			<view class="grid-list grid-combine-col-2 title"><text>基本信息</text></view>
			<view class="grid-list grid-combine-col-2 grid-row-align-left-center summarize">
				<text class="text text1">首次出租</text>
				<text class="text text2">{{ house_detail.h_metro_length < 2000 ? '离地铁近' : '' }}</text>
				<text class="text text3">有阳台</text>
			</view>
			<view class="grid-list grid-row-align-left-center base-parameter">
				<text class="text1">面积：</text>
				<text class="text2">{{ house_detail.h_space }}㎡</text>
			</view>
			<view class="grid-list grid-row-align-left-center base-parameter">
				<text class="text1">朝向：</text>
				<text class="text2">{{ house_detail.h_xiang }}</text>
			</view>
			<view class="grid-list grid-row-align-left-center base-parameter">
				<text class="text1">楼层：</text>
				<text class="text2">{{ house_detail.h_floor }}层</text>
			</view>
			<view class="grid-list grid-row-align-left-center base-parameter">
				<text class="text1">户型：</text>
				<text class="text2">{{ house_detail.h_shi + '室' + house_detail.h_ting + '厅' + house_detail.h_wei + '卫' }}</text>
			</view>
			<view class="grid-list grid-combine-col-2 grid-row-align-left-center base-parameter">
				<text class="text1">电梯：</text>
				<text class="text2">{{ house_detail.h_elevator }}</text>
			</view>
			<view class="grid-list grid-combine-col-2 grid-row-align-left-center base-parameter">
				<text class="text1">看房时间：</text>
				<text class="text2">提前预约</text>
			</view>
			<view class="grid-list grid-combine-col-2 grid-row-align-left-center base-parameter">
				<text class="text1">入住日期：</text>
				<text class="text2">即可入住</text>
			</view>
			<!-- <view class="grid-list grid-combine-col-2 grid-row-align-left-center base-parameter">
				<text class="text1">房屋状态：</text>
				<text class="text2">可预约</text>
			</view> -->
		</view>
		<!-- 入驻要求 -->
		<view class="ruzhuyaoqiu">
			<view class="title"><text>入驻要求</text></view>
			<view class="grid grid-col-4 grid-fixed-width">
					<view class="grid-list grid-row-align-center">
							<text class="text">只限女生</text>
					</view>
					<view class="grid-list grid-row-align-center">
							<text class="text">一家人</text>
					</view>
					<view class="grid-list grid-row-align-center">
							<text class="text">半年起租</text>
					</view>
					<view class="grid-list grid-row-align-center">
							<text class="text">租户稳定</text>
					</view>
					<view class="grid-list grid-row-align-center">
							<text class="text">禁烟</text>
					</view>
					<view class="grid-list grid-row-align-center">
							<text class="text">禁止养宠物</text>
					</view>
			</view>
		</view>
		
		<view class="peizhishebei">
			<view class="title"><text>配置设施</text></view>
			<view class="grid grid-col-5 grid-fixed-width">
				<!-- <view class="grid-list grid-col-align-center {{house_config['kuandai'] == 1?'active':''}} "> -->
				<view class="grid-list grid-col-align-center active ">
					<image class="img" :src="serverImgUrl + 'peizhisheshi-01.png'"></image>
					<text class="text">WiFi</text>
				</view>
				<view class="grid-list grid-col-align-center  active">
					<image class="img" :src="serverImgUrl + 'peizhisheshi-02.png'"></image>
					<text class="text">床</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl + 'peizhisheshi-03.png'"></image>
					<text class="text">衣柜</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl + 'peizhisheshi-04.png'"></image>
					<text class="text">沙发</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl + 'peizhisheshi-05.png'"></image>
					<text class="text">桌椅</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl + 'peizhisheshi-06.png'"></image>
					<text class="text">洗衣机</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl + 'peizhisheshi-07.png'"></image>
					<text class="text">冰箱</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl + 'peizhisheshi-08.png'"></image>
					<text class="text">暖气</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl + 'peizhisheshi-09.png'"></image>
					<text class="text">热水器</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl + 'peizhisheshi-10.png'"></image>
					<text class="text">可做饭</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl + 'peizhisheshi-11.png'"></image>
					<text class="text">电视</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl + 'peizhisheshi-12.png'"></image>
					<text class="text">空调</text>
				</view>
				<view class="grid-list grid-col-align-center">
					<image class="img" :src="serverImgUrl + 'peizhisheshi-13.png'"></image>
					<text class="text">阳台</text>
				</view>
			</view>
		</view>

		<view class="weizhi-and-zhoubian">
			<view class="title"><text>位置及周边</text></view>
			<!-- 地图组件 -->
			<showMarkersMap latitude="30.924585" longitude="121.468585" address="运河新村" />
		</view>

		<view class="grid grid-col-2 brief">
			<view class="grid-list grid-combine-col-2 grid-row-align-left-center title"><text>房源介绍</text></view>
			<view class="grid-list grid-combine-col-2  description">
				东南朝向，3室1厅1卫，
				全天采光。让您时刻感受温暖的阳光。精品装修，卧室宽大家具可任意摆设，空气流通性好;家具齐全可拎包入住;阳台视野开阔，可鸟瞰小区全貌小区环境幽静,绿化率达60%。
			</view>
		</view>
		<!-- 确认租房参数填写 -->
		<view class="grid grid-col-2 sure-zhufang-attr">
			<view class="grid-list grid-combine-col-2 grid-row-align-space-between-center">
			<text class="title">支付金额</text> 
			<view class="input-box red grid-row-align-center"><input type="text" value="" placeholder="支付金额" />￥</view>
			</view>
			<view class="grid-list grid-combine-col-2 grid-row-align-space-between-center">
			<text class="title">押金</text> 
			<view class="input-box red grid-row-align-center"><input type="text" value="" placeholder="押金" />￥</view>
			</view>
			<view class="grid-list grid-combine-col-2 grid-row-align-space-between-center">
			<text class="title">实际月租金</text> 
			<view class="input-box red grid-row-align-center"><input type="text" value="" placeholder="实际月租金" />￥</view>
			</view>
			<view class="grid-list grid-combine-col-2 grid-row-align-space-between-center">
			<text class="title">租入时长</text> 
			<view class="input-box grid-row-align-center"><input type="text" value="" placeholder="租入时长" />月</view>
			</view>
		</view>
		
		<view class="grid grid-col-2  uploadimg">
				<view class="grid-list grid-combine-col-2">
					<text class="grid-row-align-left-center text1">现场拍照（<text class="text1-1">3-9张</text>）</text>
					<view class="grid-row-align-center v1">
						<view class="grid-row-align-center circle">
							+
						</view>
					</view>
				</view>
		</view>
		
		<!-- 同小区房源 -->
		<view class="housing-resource-title"><text>同小区房源</text></view>
		<tuijianContentList :tuijianContent="tuijianContent" />
		<!-- 底部 -->
		<form @submit="queren">
			<view class="grid grid-col-2 footer">
				<view class="grid-list grid-combine-col-2 grid-row-align-space-between-center">
					<!-- <navigator class="center" @click="golook" :url="'../yuyuefangyuan/yuyuefangyuan?id=' + house_detail['h_id']">预约房源</navigator> -->
					<button class="center" form-type="submit" >确认租房</button>
					<text class="right">合同详情</text>
				</view>
			</view>
		</form>
	</view>
</template>

<script>
import goodsDetailsImgSlide from '@/components/dzy-goods-details-img-slide/dzy-goods-details-img-slide.vue';
import showMarkersMap from '@/components/dzy-show-markers-map/dzy-show-markers-map.vue';
import tuijianContentList from '@/components/dzy-tuijian-content-list/dzy-tuijian-content-list.vue';
export default {
	components: {
		goodsDetailsImgSlide,
		showMarkersMap,
		tuijianContentList
	},
	data() {
		return {
			serverImgUrl: this.$commonConfig.serverImgUrl,
			serverApiUrl: this.$commonConfig.serverApiUrl,

			//头部滑块图片url
			goodsDetailsImg: [],
			house_detail: [], //房源详情参数
			tuijianContent: [], //推荐内容
			house_config: [], //房源设施
			house_inmoney: [], //房源包含费用
			house_ask: [] ,//房源包含费用
			order:''
		};
	},
	//2.页面加载完成、页面卸载事件
	onLoad(e) {
		uni.request({
			url: this.serverApiUrl + 'home/house/kuai_detail', //请求url
			method: 'POST', //请求方式
			data: e, //传递的数据
			success: res => {
				//成功执行回调函数
				if (res.statusCode == 200) {
					this.tuijianContent = res.data.same;
					delete res.data.same;
					this.goodsDetailsImg = res.data.h_uploads;
					this.house_config = JSON.parse(res.data.h_config);
					this.house_inmoney = JSON.parse(res.data.h_inmoney);
					this.house_ask = JSON.parse(res.data.h_ask);
					delete res.data.h_config;
					delete res.data.h_ask;
					delete res.data.inmoney;
					this.house_detail = res.data;
				} else {
					// console.log(res);
				}
			},
			fail: () => {},
			complete: () => {}
		});
	},
	methods: {
		queren(e){
			// console.log(uni.getStorageSync('weijia_pro')['u_id']);
			this.order = e.detail.value
			uni.request({
				url: this.serverApiUrl+'home/order/kuai_order', //请求url
				method: 'POST',               //请求方式 
				data: {
					uid:uni.getStorageSync('weijia_pro')['u_id'],
					hid:this.house_detail.h_id,
					huid:this.house_detail.hu_id,
					money:1000,
					ymoney:200,
					zmoney:300,
				},                     //传递的数据
				success: res => {   //成功执行回调函数
					if(res.statusCode==200){
						if(res.data == '1'){
							uni.switchTab({
							    url: '/pages/index/index'
							});
						}
					}else{ 
						console.log(res);
					}
					
				},
				fail: () => {},
				complete: () => {}
			});
		},
		
	}
};
</script>

<style lang="scss" scoped>
.head {
	width: 90%;
	margin: 1em auto;
	.grid-list {
		height: 75px;
		.title {
			font-size: 18px;
		}
		.price {
			font-size: 14px;
			color: #fc8b23;
		}
		.pay-way {
			font-size: 13px;
			color: #68e2b3;
		}
	}
}
.base-msg {
	width: 90%;
	margin: 2em auto;
	.grid-list {
		&.title {
			font-size: $uni-font-size-lg;
		}
		&.summarize {
			height: 3em;
			.text {
				margin-right: 2em;
				&.text1 {
					color: #79e5bc;
				}
			}
		}
		&.base-parameter {
			height: 2em;
			.text1 {
				color: #a8a8a8;
				margin-right: 2em;
			}
		}
	}
}
.ruzhuyaoqiu{
	.title {
		width: 90%;
		margin: 0 auto 1em;
		font-size: $uni-font-size-lg;
	}
	.grid-list {
		margin-bottom:1em;
		.text{
			padding:1px 10px;
			border:1px solid #67E2B3;
			color:#67E2B3;
		}
	}
}
.peizhishebei {
	.title {
		width: 90%;
		margin: 0 auto;
		font-size: $uni-font-size-lg;
	}
	.grid-list {
		height: 160rpx;
		opacity: 0.2;
		.img {
			width: 25px;
			height: 25px;
		}
		.text {
			font-size: $uni-font-size-sm;
			text-decoration: line-through;
			margin-top: 0.3em;
		}
		&.active {
			opacity: 1;
			.text {
				text-decoration: none;
			}
		}
	}
}

.weizhi-and-zhoubian {
	.title {
		width: 90%;
		margin: 0 auto 1em;
		font-size: $uni-font-size-lg;
	}
}
.brief {
	width: 90%;
	margin: 0 auto;
	.title {
		height: 40px;
		font-size: $uni-font-size-lg;
	}
	.description {
		color: #999999;
		text-indent: 2em;
		text-align: justify;
	}
}

.housing-resource-title {
	width: 90%;
	margin: 1em auto;
	font-size: $uni-font-size-lg;
}

.footer {
	height: 120rpx;
	padding: 0 1em;
	border-top: 1px solid #f2f2f2;
	margin-top: 1em;
	.left {
		.img {
			width: 25px;
			height: 25px;
		}
	}
	.center,
	.right {
		padding: 6px 12px;
		border-radius: 6px;
		line-height:normal;
	}
	.center {
		background: #67e2b3;
		color: #fff;
	}
	.right {
		background: #fce649;
		color: #444337;
	}
}
.grid.sure-zhufang-attr{
	border-top:6px solid #F4F3F3;
	margin-top:1em;
	.grid-list{
		padding:0.5em 1.5em 0;
		.title{
			color:#999999;
		}
		.input-box{
			input[type='text']{
				border:1px solid #D8D8D8;
				box-sizing: border-box;
				padding:0 0.5em;
			}
			&.red{
				color:#FD0101;
			}
		}
	}
}
.grid.uploadimg{
	width:90%;
	margin:0 auto;
	.grid-list{
				.text1{
					height:40px;
					.text1-1{
						color:#FD3E3E;
					}
				}
				.v1{
					height:250rpx;
					border:1px solid #EBEBEB;
					border-radius: 15px;
					.circle{
						width:45px;
						height:45px;
						border:1px solid #EBEBEB;
						border-radius: 45px;
						color:#EBEBEB;
						font-size:25px;
						font-weight: 700;
					}
				}
			}
}
</style>
