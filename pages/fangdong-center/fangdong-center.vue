<template>
	<view>
		<view class="user-base-msg fangdong">
					<view class="grid grid-col-2">
						<view class="grid-list grid-row-align-left-center">
							<image class="img" :src="serverUrl+'static/images/head.png'"></image>
							<text class="text">昵称</text>
						</view>
						<view class="grid-list grid-row-align-right-center">
							<view class="turnBtn">
								<navigator url="../fangke-center/fangke-center" hover-class="none">
									转换租客
								</navigator>
							</view>
						</view>
					</view>
					<!-- 波浪 -->
					<view class="water-group">
						<view class="water water1" :style="'background-image: url('+serverUrl+'static/images/wave.png)'"></view>
						<view class="water water2" :style="'background-image: url('+serverUrl+'static/images/wave.png)'"></view>
						<view class="water water3" :style="'background-image: url('+serverUrl+'static/images/wave.png)'"></view>
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
				<image  class="img" :src="serverUrl+'static/images/fangdong-gerenfuwu01.png'"></image>
				<text class="text">我的监控</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<image  class="img" :src="serverUrl+'static/images/fangdong-gerenfuwu02.png'"></image>
				<text class="text">业主托管</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<image  class="img" :src="serverUrl+'static/images/fangdong-gerenfuwu03.png'"></image>
				<text class="text">预约管理</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<image  class="img" :src="serverUrl+'static/images/fangdong-gerenfuwu04.png'"></image>
				<text class="text">物业交接</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<image  class="img" :src="serverUrl+'static/images/fangdong-gerenfuwu05.png'"></image>
				<text class="text">我的认证</text>
			</view>
			<view class="grid-list grid-col-align-center">
				<image  class="img" :src="serverUrl+'static/images/fangdong-gerenfuwu06.png'"></image>
				<text class="text">我的钱包</text>
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

<style lang="scss" scoped>	
	@import "../../common/user-center";	
</style>
