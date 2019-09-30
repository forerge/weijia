<template>
	<view>
		<!-- 上传图片框 -->
		<view class="uploadImgFrame">
			<columnTitle columnTitle="基本信息(发布后不可更改)" backgroundColor="#5E5E5E" color="#fff"/>
			<view class="uploadImg row-items-center">
				<view class="uploadImgBtn col-items-center">
					<image :src="serverImgUrl+'static/images/xiangji.png'" mode="widthFix"></image>
					<text>上传图片</text>
				</view> 
			</view>
		</view>
		<columnTitle columnTitle="基本信息"/>
		<view class="grid grid-col-4 base-msg">
			<view class="grid-list grid-col-align-center grid-combine-col-4">
					<text class="select-title">小区</text>
					<text class="select-btn">填写小区名称</text>
			</view>
			<view class="grid-list grid-col-align-center  grid-combine-col-4">
					<text class="select-title">面积</text>
					<text class="select-btn">请填写</text>
			</view>
			<view class="grid-list grid-col-align-center">
					<text class="select-title">厅室</text>
					<multiSelectorPicker :range="tingshi" @bindChange="bindChange">
						<text class="select-btn" slot="html">
						{{tingshi[0][pickerValue[0]]||'请选择'}}{{tingshi[1][pickerValue[1]]||''}}
						{{tingshi[2][pickerValue[2]]||''}}
						</text>
					</multiSelectorPicker>
					<view class="right-short-line"></view>
			</view>
			<view class="grid-list grid-col-align-center grid-combine-col-2">
					<text class="select-title">朝向</text>
					<multiSelectorPicker :range="chaoxiang" @bindChange="bindChange">
						<text class="select-btn" slot="html">{{chaoxiang[0][pickerValue[0]]||'请选择'}}</text>
					</multiSelectorPicker>
					<view class="right-short-line"></view>
			</view>
			<view class="grid-list grid-col-align-center">
					<text class="select-title">楼层</text>
					<multiSelectorPicker :range="louceng" @bindChange="bindChange">
						<text class="select-btn" slot="html">{{louceng[0][pickerValue[0]]||'请选择'}}</text>
					</multiSelectorPicker>
			</view>
			<view class="grid-list grid-col-align-center grid-combine-col-2" >
					<text class="select-title">车位</text>
					<multiSelectorPicker :range="chewei" @bindChange="bindChange">
						<text class="select-btn" slot="html">{{chewei[0][pickerValue[0]]||'有无车位'}}</text>
					</multiSelectorPicker>
					<view class="right-short-line"></view>
			</view>
			<view class="grid-list grid-col-align-center grid-combine-col-2" >
					<text class="select-title">电梯</text>
					<multiSelectorPicker :range="dianti" @bindChange="bindChange">
						<text class="select-btn" slot="html">{{dianti[0][pickerValue[0]]||'有无电梯'}}</text>
					</multiSelectorPicker>
			</view>
		</view>
		<!-- 租金详情 -->
		<columnTitle columnTitle="租金详情"/>
		<view class="grid grid-col-2 base-msg">
			<view class="grid-list grid-col-align-center grid-combine-col-2">
					<text class="select-title">月租金</text>
					<multiSelectorPicker :range="yuezhujin" @bindChange="bindChange">
						<text class="select-btn" slot="html">{{yuezhujin[0][pickerValue[0]]||'请选择'}}</text>
					</multiSelectorPicker>
			</view>
			<view class="grid-list grid-col-align-center  grid-combine-col-2">
					<text class="select-title">租金包含费用（物业费等）</text>
					<text class="select-btn">请选择</text>
			</view>
		</view>
		<!-- 联系人 -->
		<columnTitle columnTitle="联系人"/>
		<view class="grid grid-col-4 base-msg">
			<view class="grid-list grid-col-align-center grid-combine-col-2">
					<text class="select-btn">请填写姓名</text>
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
			<view class="grid-list grid-col-align-center grid-combine-col-4">
					<text class="select-title">您的身份</text>
					<text class="select-btn">请选择</text>
			</view>
			<view class="grid-list grid-col-align-center  grid-combine-col-4">
					<text class="select-title">为保护隐私，您的真实号码将被隐藏</text>
					<text class="select-btn">123-****-789<text class="select-btn-reminder">已验证</text></text>
			</view>
			<view class="grid-list grid-col-align-left-center grid-combine-col-3">
					<text class="select-title">中介勿扰</text>
					<text class="select-btn">开启后将有效减少中介来电</text>
			</view> 
			<view class="grid-list grid-row-align-right-center">
					<radio value="yes" checked=true color="#F7A00C"/>
			</view>
			<view class="grid-list grid-col-align-left-center grid-combine-col-3">
					<text class="select-title">接听时段</text>
					<text class="select-btn">只在所选时间内接收来电</text>
			</view>
			<view class="grid-list grid-row-align-right-center">
					<text class="select-btn">7:00-18:00</text>
			</view>
		</view>
		<navigator url="./zhengzhufabu2" hover-class="none">
				 <bigButonYellow big_button_yellow="下一步"/>
		</navigator>
	</view>
</template>

<script>
	import columnTitle from "@/components/dzy-column-title/dzy-column-title.vue";
	import bigButonYellow from "@/components/yw-big-buton-yellow/yw-big-buton-yellow.vue";
	import multiSelectorPicker from "@/components/dzy-multiSelector-picker/dzy-multiSelector-picker.vue";
	export default {
		components:{
			columnTitle,
			bigButonYellow,
			multiSelectorPicker
		},
		data() {
			return {
				//获取自定义$commonConfig对象中的服务器地址
				serverImgUrl:this.$commonConfig.serverImgUrl,
				chewei:[['有车位','无车位']],
				dianti:[['有电梯','无电梯']],
				chaoxiang:[['东','南','西','北']],
				tingshi:[['1室','2室','3室','4室'],['1厅'],['1卫','2卫']],
				yuezhujin:[['押一付一','押一付三','半年付']],
				louceng:[
					['-2层','-1层','1层','2层','3层','4层','5层','6层','7层','8层','9层','10层','11层','12层','13层','14层','15层','16层','17层','18层','19层','20层','21层']
					],
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
		.uploadImg{
			width:100%;
			height:350rpx;
			background: #C9C9C9;
			.uploadImgBtn{
				width:150px;
				height:150px;
				border-radius: 75px;
				text-align:center;
				background:#fff;		
				image{
					width:60px;
				}
				text{
					font-size:$uni-font-size-base;
					margin-top:1em;
				}
			}
		}
		@import "../../common/fabujibenxinxi";
</style>
