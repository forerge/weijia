<template>
	<view>

		<columnTitle columnTitle="基本信息" columnTitleReminder="(发布后不可更改)"/>
		<view class="grid grid-col-4 base-msg">
			<view class="grid-list grid-col-align-center grid-combine-col-4">
					<text class="select-title">小区</text>
					<text class="select-btn">填写小区名称</text>
			</view>
			<view class="grid-list grid-col-align-center  grid-combine-col-4">
					<text class="select-title">门牌号</text>
					<text class="select-btn">请放心填写不会对外公开</text>
			</view>
			<view class="grid-list grid-col-align-center   grid-combine-col-4">
					<text class="select-title">面积</text>
					<text class="select-btn">请填写</text>
					<view class="right-short-line"></view>
			</view>
			<view class="grid-list grid-col-align-center">
					<text class="select-title">厅室</text>
					<text class="select-btn">请选择</text>
					<view class="right-short-line"></view>
			</view>
			<view class="grid-list grid-col-align-center grid-combine-col-2">
					<text class="select-title">朝向</text>
					<text class="select-btn">请选择</text>
					<view class="right-short-line"></view>
			</view>
			<view class="grid-list grid-col-align-center">
					<text class="select-title">楼层</text>
					<text class="select-btn">请选择</text>
			</view>
			<view class="grid-list grid-col-align-center grid-combine-col-4" >
					<text class="select-title">月租金</text>
					<text class="select-btn">请填写</text>
					<view class="right-short-line"></view>
			</view>
			<view class="grid-list grid-col-align-center grid-combine-col-4" >
					<text class="select-title">委托方式</text>
					<text class="select-btn">请选择</text>
			</view>
		</view>
		<!-- 联系人 -->
		<columnTitle columnTitle="联系人" columnTitleReminder="(发布后不可更改)"/>
		<view class="grid grid-col-4 base-msg">
			<view class="grid-list grid-col-align-center grid-combine-col-2">
					<text class="select-title">昵称xxx<text class="sign">房东</text></text>
			</view>
			<view class="grid-list grid-row-align-center grid-combine-col-2">
					<label class="radio active">
						男士
						<radio value="男士" checked=true />
					</label>
					<label class="radio">
						女士
						<radio value="女士" checked=false />
					</label>
			</view>
		
			<view class="grid-list grid-col-align-center  grid-combine-col-4">
					<text class="select-title">手机号<text class="select-title-reminder">(加密不公开)</text></text>
					<text class="select-btn">123-****-789</text>
			</view>
		</view>
		<bigButonYellow big_button_yellow="下一步" @tap="showmask"/>
		<!-- 弹框选择委托方式 -->
		<view class="mask" :class="{active:maskActive}">
			 <radio-group>
			<view class="grid grid-col-3 weituo-select">
				<view class="grid-list grid-row-align-right-center grid-combine-col-2">
					<text>请选择委托方式</text>
				</view>
				<view class="grid-list grid-row-align-right-center">
					<text @tap="hidemask">完成</text>
				</view>
				
				<view class="grid-list grid-combine-col-2 grid-col-align-left-center">
					<text class="select-title">委托给经纪人/职业房东</text>
					<text class="select-description">房屋交给经纪人管理，与经纪人签约</text>
				</view>
				<view class="grid-list grid-row-align-right-center">
					 <radio value="v1"  checked="true" color="#F89357"/>
				</view>
				
				<view class="grid-list grid-combine-col-2 grid-col-align-left-center">
					<text class="select-title">经纪人帮忙带客</text>
					<text class="select-description">经纪人帮找租客，直接与租客签约</text> 
				</view>
				<view class="grid-list grid-row-align-right-center">
					<radio value="v2"  color="#F89357"/>
				</view>
			</view>
			 </radio-group>
		</view>
		
	</view>
</template>

<script>
	import columnTitle from "../../components/dzy-column-title/dzy-column-title.vue";
	import bigButonYellow from "../../components/yw-big-buton-yellow/yw-big-buton-yellow.vue";
	export default {
		components:{
			columnTitle,
			bigButonYellow
		},
		data() {
			return {
				//获取自定义$commonConfig对象中的服务器地址
				serverImgUrl:this.$commonConfig.serverImgUrl,
				maskActive:false
			};
		},
		methods:{
			showmask(){
				this.maskActive=true;
			},
			hidemask(){
				this.maskActive=false;
			}
		}
	}
</script>
 
<style lang="scss" scoped>
	@import "../../common/fabujibenxinxi"; 
	.mask{
		display: none;
		&.active{
			display: block;
		}
	} 
	.weituo-select{
		background:#fff;
		position: absolute;
		bottom:0;
		padding-bottom:250rpx;
		.grid-list{
			border-bottom:1px solid #D7D7D7;
			.select-description{
				font-size:$uni-font-size-sm-minus;
				color:#B0B0B0;
			}
		}
		.grid-list:nth-child(1) , .grid-list:nth-child(2){
			background:#F3F3F3; 
			height:75rpx !important;
		}
		.grid-list:nth-child(2){
			padding-right:1em;
			color:#F89357;
		}
		.grid-list:not(:nth-child(1)):not(:nth-child(2)){
			height:120rpx !important;
		}
		.grid-list:not(:nth-child(1)):not(:nth-child(2)):nth-child(odd){
			padding-left:1em;
		}
		.grid-list:not(:nth-child(1)):not(:nth-child(2)):nth-child(even){
			padding-right:1em;
		}
		.grid-list:not(:nth-child(1)):not(:nth-child(2)):nth-child(even) text{
			padding-right:1em;
		}
	}
</style>
