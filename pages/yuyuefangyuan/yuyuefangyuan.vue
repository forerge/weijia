<template>
	<view>
		<tuijianContentList :tuijianContent="tuijianContent"/>
		<view class="grid grid-col-2 yuyue-input">
			<view class="grid-list grid-combine-col-2 grid-row-align-left-center">
				<text>填写预约信息</text>
			</view>
			<view class="grid-list grid-combine-col-2 grid-row-align-space-between-center">
					<text class="text1">预约时间</text>
					<timePicker sTime="8" cTime="20" interval="10" @changeTime="getTime">
					  <view slot="pCon">
					   <input type="text" :value="time||''" placeholder="请选择预约时间"/>
					  </view>
					</timePicker>
					
			</view>
			<view class="grid-list grid-combine-col-2 grid-row-align-space-between-center">
				<text  class="text1">联系方式</text><input type="text" value="" placeholder="请填写联系方式"/>
			</view>
		</view>
		<textareaColumnFrame columnTitle="其它" borderTopColor="#fff" placeholder="如有其他问题请在此留言哦"/>
		 <bigButonYellow big_button_yellow="确定"/>
	</view>
</template>

<script>
	import bigButonYellow from "@/components/yw-big-buton-yellow/yw-big-buton-yellow.vue";
	import tuijianContentList from "@/components/dzy-tuijian-content-list/dzy-tuijian-content-list.vue"
	import textareaColumnFrame from "@/components/dzy-textarea-column-frame/dzy-textarea-column-frame.vue";
	import timePicker from "@/components/uni-time-picker/uni-time-picker.vue";
	export default {
		components:{
			bigButonYellow,
			tuijianContentList,
			textareaColumnFrame,
			timePicker
		},
		data() {
			return {
				//获取自定义$commonConfig对象中的服务器地址
				serverImgUrl:this.$commonConfig.serverImgUrl,
				//我的收藏
				tuijianContent:[
					{
					imgUrl:this.$commonConfig.serverImgUrl+'static/images/tuijian-thumbnail.png',
					title:'1合租.天通苑北二区 3居室.1厅.1卫',
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
				time:'',//格式化时间，2019-09-05 00：00：00
				timestamp:''//时间戳，
			};
		},
		methods: {
			getTime(time,timestamp){
				//time是传出来的格式化时间，timestamp是传出来的时间戳
				this.time = time;
				this.timestamp = timestamp;
			  }
	}
}
</script>

<style lang="scss">
.yuyue-input{
	width:90%;
	margin:0 auto;
	.grid-list{
		height:90rpx;
		&:nth-child(1){
			font-size: $uni-font-size-lg;
		}
	}
}
</style>
