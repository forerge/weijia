<template>
	<view>
		<view class="user-base-msg fangke" >
					<view class="grid grid-col-2">
						<view class="grid-list grid-row-align-left-center">
							<image class="img" :src="serverUrl+'static/images/head.png'"></image>
							<text class="text">昵称</text>
						</view>
						<view class="grid-list grid-row-align-right-center">
							<view class="turnBtn">
								<navigator url="../fangdong-center/fangdong-center" hover-class="none">
									转换房东	
								</navigator>
							</view>
						</view>
					</view>
					<!-- 波浪 -->
					<view class="water-group">
			<view class="water water1" :style="'background-image: url('+serverUrl+'static/images/wave-yellow.png)'"></view>
			<view class="water water2" :style="'background-image: url('+serverUrl+'static/images/wave-yellow.png)'"></view>
			<view class="water water3" :style="'background-image: url('+serverUrl+'static/images/wave-yellow.png)'"></view>
					</view>
					
		</view>
		<view class="grid grid-col-4 user-record">
			<view class="grid-list grid-col-align-center">
				<text class="num">0</text>
				<text class="title">我的发布</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<text class="num">0</text>
				<text class="title">收藏房源</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<text class="num">0</text>
				<text class="title">联系记录</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<text class="num">0</text>
				<text class="title">最近浏览</text>
			</view>
		</view>
		<!-- 个人服务 -->
		<columnTitle columnTitle="个人服务" borderTopColor="#fff"/>
		<view class="grid grid-col-4 grid-fixed-width personserve">
			<view class="grid-list grid-col-align-center">
				<image  class="img" :src="serverUrl+'static/images/fangke-gerenfuwu01.png'"></image>
				<text class="text">预约看房</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<image  class="img" :src="serverUrl+'static/images/fangke-gerenfuwu02.png'"></image>
				<text class="text">我的合同</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<image  class="img" :src="serverUrl+'static/images/fangke-gerenfuwu03.png'"></image>
				<text class="text">我的钱包</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<image  class="img" :src="serverUrl+'static/images/fangke-gerenfuwu04.png'"></image>
				<text class="text">远程开门</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<image  class="img" :src="serverUrl+'static/images/fangke-gerenfuwu05.png'"></image>
				<text class="text">我的福利券</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<image  class="img" :src="serverUrl+'static/images/fangke-gerenfuwu06.png'"></image>
				<text class="text">我的水电</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<image  class="img" :src="serverUrl+'static/images/fangke-gerenfuwu07.png'"></image>
				<text class="text">维修服务</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<image  class="img" :src="serverUrl+'static/images/fangke-gerenfuwu08.png'"></image>
				<text class="text">保洁服务</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<image  class="img" :src="serverUrl+'static/images/fangke-gerenfuwu09.png'"></image>
				<text class="text">到期交租</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<image  class="img" :src="serverUrl+'static/images/fangke-gerenfuwu010.png'"></image>
				<text class="text">找室友</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<image  class="img" :src="serverUrl+'static/images/fangke-gerenfuwu011.png'"></image>
				<text class="text">个人认证</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<image  class="img" :src="serverUrl+'static/images/fangke-gerenfuwu012.png'"></image>
				<text class="text">账单查询</text>
			</view>
		</view>
		<radio-group>
		<view class="grid grid-col-2 roleSelect">
			<view class="grid-list grid-row-align-left-center">
				职业房东
			</view>
			<view class="grid-list grid-col-align-right-center">
					<radio value="v1"  color="#F97F36" />
			</view>
			<view class="grid-list grid-row-align-left-center">
				经纪人
			</view>
			<view class="grid-list grid-col-align-right-center">
				<radio value="v2"  color="#F97F36" />
			</view>
			<view class="grid-list grid-combine-col-2 grid-col-align-left-center" @tap="showMask">
				联系客服
			</view>
		</view>
		</radio-group>
		
		<!-- 联系客服弹框-->
		<view class="mask" :class="{active:active}">
			<view class="grid grid-col-2 contact-waiter">
				<view class="grid-list grid-combine-col-2 grid-row-align-center">
					123-4567-789
				</view>
				<view class="grid-list grid-row-align-center" @tap="hideMask">
					取消
				</view>
				<view class="grid-list grid-row-align-center" @tap="hideMask">
					确定
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	import columnTitle from "../../components/dzy-column-title/dzy-column-title.vue";
	export default {
		components:{
			columnTitle
		},
		data() {
			return {
				//获取自定义$commonConfig对象中的服务器地址
				serverUrl:this.$commonConfig.serverUrl,
				active:false
			}
		},
		methods: {
			hideMask(){
				this.active=false;
			},
			showMask(){
				this.active=true;
			}
		}
	}
</script>

<style lang="scss">	
	@import "../../common/user-center";	
</style>
