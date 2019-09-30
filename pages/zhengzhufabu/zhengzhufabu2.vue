<template>
	<view>
	
		<columnTitle columnTitle="入住信息"/>
		<view slot="picker-view-top">
			<view class="grid grid-col-3 top-picker-view" >
				<view class="grid-list grid-col-align-center select-btn" >
					<text class="text">看房时间</text>
					<text class="text">请选择</text>
				</view>
				<view class="grid-list grid-col-align-center select-btn" >
					<text class="text">宜住人数</text>
					<multiSelectorPicker :range="renshu" @bindChange="bindChange">
						<text class="text" slot="html">{{renshu[0][pickerValue[0]]||'请选择'}}</text>
					</multiSelectorPicker>
					
				</view>
				<view class="grid-list grid-col-align-center select-btn" >
					<text class="text">入住时间</text>
					<text class="text">请选择</text>
				</view>
			</view>
		</view>
		<checkboxColumnFrame columnTitle="房屋配置" 
		:checkboxVal="['宽带','床','衣柜','沙发','桌椅','电视','空调','洗衣机','冰箱','热水器','燃气灶','抽烟机','电磁炉','微波炉','独立卫生间','阳台','可做饭']"
		/>
		<checkboxColumnFrame columnTitle="房屋亮点"
		:checkboxVal="['南北通透','有阳台','首次出租']"
		/>
		<checkboxColumnFrame columnTitle="出租要求"
		:checkboxVal="['只限女生','一家人','禁止养宠物','半年起租','一年起租','租户稳定','作息正常','禁烟']"
		/>
		<textareaColumnFrame columnTitle="补充几句" placeholder="详细的描述会大大增加快速出租的机会可以介绍房子引人的地方，交通和周边环境，可以入住的时间，对租客的要求。"/>
		
		<navigator url="./wodefabu" hover-class="none">
				 <bigButonYellow big_button_yellow="确认发布"/>
		</navigator>
	</view>
</template>

<script>
	import columnTitle from "@/components/dzy-column-title/dzy-column-title.vue";
	import bigButonYellow from "@/components/yw-big-buton-yellow/yw-big-buton-yellow.vue";
	import multiSelectorPicker from "@/components/dzy-multiSelector-picker/dzy-multiSelector-picker.vue";
	import textareaColumnFrame from "@/components/dzy-textarea-column-frame/dzy-textarea-column-frame.vue";
	import checkboxColumnFrame from "@/components/dzy-checkbox-column-frame/dzy-checkbox-column-frame.vue";
	export default {
		components:{
			columnTitle,
			bigButonYellow,
			multiSelectorPicker,
			textareaColumnFrame,
			checkboxColumnFrame
		},
		data() {
			return {
				//获取自定义$commonConfig对象中的服务器地址
				serverImgUrl:this.$commonConfig.serverImgUrl,
				renshu:[['1人','2人','3人','4人','5人','6人','7人','8人']],
				pickerValue:[] //当前选中值对应索引
			};
		},
		methods:{
				bindChange: function(value) {
				 this.pickerValue = value
				 }	
		}
	}
</script>

<style lang="scss" scoped>
	.top-picker-view{
		border-top:1px solid #D3D3D3;
				.grid-list{
					position: relative;
					&.select-btn{
					$height:90px;
					height:$height;
					.text:nth-child(1){ 
						font-size: $uni-font-size-sm;
					}
					.text:nth-child(2){
						color:#999999;
						margin-top:5px;
					}
					&:not(:last-child):after{
						position: absolute;
						content: "|";
						right:0;
						top:calc(#{$height} / 3);
						height:calc(#{$height} / 3);
						width:1px;
					}
				}
		}
	}
</style>
