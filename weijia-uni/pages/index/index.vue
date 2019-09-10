<template>
    <view class='page'>
		<!-- 位置搜索板块 start -->
		<view class="topsearch">
			<view class="location" @click="showCitySelect">
				<text class="address" v-text="cityName"></text>
				<image class="img" :src="serverUrl+'static/images/'+downUpImg"></image>
			</view>
			<view class="searchInput">
				<view class="hr"></view>
				<image class="img" :src="serverUrl+'static/images/sousuo.png'" ></image>
				<input class="input" type="text" placeholder="请输入小区名或地址" @focus="hideCitySelect"/>
			</view>
		</view>
		<!-- 位置搜索板块 end -->
		
		<!-- 轮播图板块 start -->
		<swiper  :indicator-dots="true" :autoplay="true" :interval="3000"  class="lunbo" >
			<swiper-item>
				<image class="lunboimg" :src="serverUrl+'static/images/banner1.png'" mode="widthFix"></image>
			</swiper-item>
			<swiper-item>
				<image class="lunboimg" :src="serverUrl+'static/images/banner2.png'" mode="widthFix"></image>
			</swiper-item> 
		</swiper>
      <!-- 轮播图板块 end -->
		
	<!-- 导航栏板块 start-->
	<view class="grid grid-col-4 nav-list">
		<view class="grid-list">
				<navigator url="javascript:void(0)" hover-class="none">
			<image :src="serverUrl+'static/images/nav01.png'" ></image>
			<text>唯家好房</text>
			 </navigator>
		</view>
		<view class="grid-list">
			<navigator url="javascript:void(0)" hover-class="none">
			<image :src="serverUrl+'static/images/nav02.png'" ></image>
			<text>整租</text>
			</navigator>
		</view>
		<view class="grid-list">
			<navigator url="javascript:void(0)" hover-class="none">
			<image :src="serverUrl+'static/images/nav03.png'" ></image>
			<text>合租</text>
			 </navigator>
		</view>
		<view class="grid-list">
			<navigator url="javascript:void(0)" hover-class="none">
			<image :src="serverUrl+'static/images/nav04.png'" ></image>
			<text>上传房源</text>
			 </navigator>
		</view>
		<view class="grid-list">
			<navigator url="javascript:void(0)" hover-class="none">
			<image :src="serverUrl+'static/images/nav05.png'" ></image>
			<text>职业房东</text>
			 </navigator>
		</view>
		<view class="grid-list">
			<navigator url="javascript:void(0)" hover-class="none">
			<image :src="serverUrl+'static/images/nav06.png'" ></image>
			<text>职业经纪人</text>
			 </navigator>
		</view>
		<view class="grid-list">
			<navigator url="javascript:void(0)" hover-class="none">
			<image :src="serverUrl+'static/images/nav07.png'" ></image>
			<text>房东委托</text>
			 </navigator>
		</view>
		<view class="grid-list">
			<navigator url="javascript:void(0)" hover-class="none">
			<image :src="serverUrl+'static/images/nav08.png'" ></image>
			<text>预约看房</text>
			 </navigator>
		</view>
		<view class="grid-list">
			<navigator url="javascript:void(0)" hover-class="none">
			<image :src="serverUrl+'static/images/nav09.png'" ></image>
			<text>物业交接</text>
			 </navigator>
		</view>
		<view class="grid-list">
			<navigator url="javascript:void(0)" hover-class="none">
			<image :src="serverUrl+'static/images/nav010.png'" ></image>
			<text>找室友</text>
			 </navigator>
		</view>
		<view class="grid-list">
			<navigator url="javascript:void(0)" hover-class="none">
			<image :src="serverUrl+'static/images/nav011.png'" ></image>
			<text>我的合同</text>
			 </navigator>
		</view>
		<view class="grid-list">
			<navigator url="javascript:void(0)" hover-class="none">
			<image :src="serverUrl+'static/images/nav012.png'" ></image>
			<text>我的钱包</text>
			 </navigator>
		</view>
	</view>
	<!-- 导航栏板块 end-->
	
		<!-- 推荐模块开始 -->
		<view class="tuijian">
			<view class="title">
				推荐
			</view>
			<view class="content">
				<view class="content-list">
					<view class="img">
						<navigator url="javascript:void(0)" hover-class="none">
						 <image :src="serverUrl+'static/images/tuijian-thumbnail.png'" mode="widthFix"></image>
						  </navigator>
					</view>
					<view class="description">
						<navigator url="javascript:void(0)" hover-class="none">
						<view class="v1">合租.天通苑北二区 3居室.1厅.1卫</view>
						<view class="v2">
							<text class="t1">15m²</text>
							 <text class="t2">12/18层</text> 
							 <text class="t3">朝南</text> <br>
							 <text class="t4">距5号线800m</text>
						</view>
						<view class="v3">
							<text class="t1">押一付一</text>
							 <text class="t2">离地铁近</text> 
							 <text class="t3">有阳台</text>
						</view>
						<view class="v4">
							<text class="t1">2300 </text>
							 <text class="t2">元/月</text>
						</view>
						 </navigator>
					</view>
				</view> 
				
				<view class="content-list">
					<view class="img">
						<navigator url="javascript:void(0)" hover-class="none">
						 <image :src="serverUrl+'static/images/tuijian-thumbnail.png'" mode="widthFix"></image>
						  </navigator>
					</view>
					<view class="description">
						<navigator url="javascript:void(0)" hover-class="none">
						<view class="v1">合租.天通苑北二区 3居室.1厅.1卫</view>
						<view class="v2">
							<text class="t1">15m²</text>
							 <text class="t2">12/18层</text> 
							 <text class="t3">朝南</text> <br>
							 <text class="t4">距5号线800m</text>
						</view>
						<view class="v3">
							<text class="t1">押一付一</text>
							 <text class="t2">离地铁近</text> 
							 <text class="t3">有阳台</text>
						</view>
						<view class="v4">
							<text class="t1">2300 </text>
							 <text class="t2">元/月</text>
						</view>
						 </navigator>
					</view>
				</view> 
				
				<view class="content-list">
					<view class="img">
						<navigator url="javascript:void(0)" hover-class="none">
						 <image :src="serverUrl+'static/images/tuijian-thumbnail.png'" mode="widthFix"></image>
						  </navigator>
					</view>
					<view class="description">
						<navigator url="javascript:void(0)" hover-class="none">
						<view class="v1">合租.天通苑北二区 3居室.1厅.1卫</view>
						<view class="v2">
							<text class="t1">15m²</text>
							 <text class="t2">12/18层</text> 
							 <text class="t3">朝南</text> <br>
							 <text class="t4">距5号线800m</text>
						</view>
						<view class="v3">
							<text class="t1">押一付一</text>
							 <text class="t2">离地铁近</text> 
							 <text class="t3">有阳台</text>
						</view>
						<view class="v4">
							<text class="t1">2300 </text>
							 <text class="t2">元/月</text>
						</view>
						 </navigator>
					</view>
				</view> 
				
				<view class="content-list">
					<view class="img">
						<navigator url="javascript:void(0)" hover-class="none">
						 <image :src="serverUrl+'static/images/tuijian-thumbnail.png'" mode="widthFix"></image>
						  </navigator>
					</view>
					<view class="description">
						<navigator url="javascript:void(0)" hover-class="none">
						<view class="v1">合租.天通苑北二区 3居室.1厅.1卫</view>
						<view class="v2">
							<text class="t1">15m²</text>
							 <text class="t2">12/18层</text> 
							 <text class="t3">朝南</text> <br>
							 <text class="t4">距5号线800m</text>
						</view>
						<view class="v3">
							<text class="t1">押一付一</text>
							 <text class="t2">离地铁近</text> 
							 <text class="t3">有阳台</text>
						</view>
						<view class="v4">
							<text class="t1">2300 </text>
							 <text class="t2">元/月</text>
						</view>
						 </navigator>
					</view>
				</view> 
				
				<view class="content-list">
					<view class="img">
						<navigator url="javascript:void(0)" hover-class="none">
						 <image :src="serverUrl+'static/images/tuijian-thumbnail.png'" mode="widthFix"></image>
						  </navigator>
					</view>
					<view class="description">
						<navigator url="javascript:void(0)" hover-class="none">
						<view class="v1">合租.天通苑北二区 3居室.1厅.1卫</view>
						<view class="v2">
							<text class="t1">15m²</text>
							 <text class="t2">12/18层</text> 
							 <text class="t3">朝南</text> <br>
							 <text class="t4">距5号线800m</text>
						</view>
						<view class="v3">
							<text class="t1">押一付一</text>
							 <text class="t2">离地铁近</text> 
							 <text class="t3">有阳台</text>
						</view>
						<view class="v4">
							<text class="t1">2300 </text>
							 <text class="t2">元/月</text>
						</view>
						 </navigator>
					</view>
				</view> 
			</view>
		</view>
		<!-- 推荐模块结束 -->
		<!-- 城市选择组件 -->
		<uni-select class="uni-select" :class="{active:isActive }" :listData="listData" :quickPanelData="quickPanelData" @chooseItem="chooseItem"></uni-select>
    </view>
</template>
<!-- 二、逻辑层 -->
<script>
	import city from '../../common/city.js'
	import uniSelect from '../../components/lee-select/lee-select.vue'
	export default {
		components:{
			uniSelect
		},
		//1.初始化模板变量
		data() {
			return {
				//获取自定义$commonConfig对象中的服务器地址
				serverUrl:this.$commonConfig.serverUrl,
				
				//获取定位城市处->上下图标切换
				downUpImg:"xiala-down.png",
				
				//获取定位城市
				cityName:'上海',//默认定位城市
				
				//城市选择面板
				isActive:false,
				listData: city,
				quickPanelData:[
					{
					title:'当前城市',
					navName: '当前',
					data:['上海'], //默认显示当前城市
					height: 150
				},
				{
					title:'热门城市',
					navName: '热',
					data:['上海','北京','成都','昆明','西安'],
					height: 224
				}
				]
				// listAttr: {
				// 	listBackgroundColor:'none',
				// 	titleFontSize: 28,
				// 	titleColor: '#333',
				// 	titleHeight: 60,
				// 	titleBackground: '#ccc',
				// 	titlePadding: 20,
				// 	itemHeight: 80,
				// 	itemFontSize: 28,
				// 	itemBorderBottom: '1px solid rgba(0, 0, 0, 0.1)',
				// 	itemColor: '#333'
				// },
				// navAttr: {
				// 	enable: true,
				// 	backgroundColor: 'rgba(0, 0, 0, 0.4)',
				// 	color: '#333',
				// 	activeColor: '#fff',
				// 	fontSize: 20,
				// 	itemPadding:'6 0',
				// 	borderRadius: 100,
				// 	padding:'20 0'
				// }
			}
		},
		
		//2.页面加载完成、页面卸载事件
		onLoad() {
			
		}, 
		
		//3.事件以及自定义方法存放处
		methods: {
			showCitySelect(){
				this.downUpImg="xiala-up.png";//切换上下图标
				this.isActive=true;
			},
			hideCitySelect(){
				this.downUpImg="xiala-down.png"; //切换上下图标
				this.isActive=false;
			},
			chooseItem(item) {
				this.downUpImg="xiala-down.png"; //切换上下图标
				this.isActive=false; //隐藏城市面板
				this.cityName=item; //赋值给当前定位城市
				this.quickPanelData[0].data=[item]; //赋值给面板当前城市
			}
		}, 
	
	}
</script>
<!-- 三、样式层 -->
<style>
@import url("../../common/grid.min.css");
@import url("../../common/index.css");
</style>
