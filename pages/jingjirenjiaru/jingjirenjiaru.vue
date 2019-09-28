<template>
	<view >
		<image class="banner" :src="serverUrl+'static/images/jingjirenjiaru-banner.png'" />
		<view class="grid grid-col-2 content">
			<view class="grid-list grid-combine-col-2 grid-row-align-center-bottom title">
					<text>免费加入经纪人</text>
			</view>
			<view class="grid-list grid-combine-col-2 grid-row-align-center inputFrame">
					<input class="input" type="text" value=""  placeholder="姓名："/>
			</view>
			<view class="grid-list grid-combine-col-2 grid-row-align-center inputFrame">
				<input class="input" type="text" value=""  placeholder="请输入推荐码："/>
			</view>
			<view class="grid-list grid-combine-col-2 grid-row-align-center inputFrame">
					<provinceCityArea :iniIndex="[8,0,0]" v-on:provinceCityAreaChange="provinceCityAreaChange" >
					<text class="input-select grid-row-align-center" slot="show-province-city-area">{{address}}</text>
					</provinceCityArea>
			</view>
			
			<view class="grid-list grid-combine-col-2 grid-col-align-left-space-between upload-title">
				<text class="text1" >请上传工作证</text>
				<text class="text2" >（至少请上传3张图片，禁止含有第三方水印照片）</text>
			</view>
			<view class="grid-list grid-combine-col-2 grid-row-align-center upload-box">
				<view class="upload-btn grid-row-align-center">
						<text class="plus">+</text>
				</view>
			</view>
			<view class="grid-list grid-combine-col-2">
				<bigButonYellow big_button_yellow="限时免费入住"/>
			</view>
		</view>
	</view>
</template>

<script>
	import bigButonYellow from "@/components/yw-big-buton-yellow/yw-big-buton-yellow.vue";
	import provinceCityArea from "@/components/dzy-province-city-area/dzy-province-city-area.vue";
	export default {
		components:{
			bigButonYellow,
			provinceCityArea
		},
		data() {
			return {
				//获取自定义$commonConfig对象中的服务器地址
				serverUrl:this.$commonConfig.serverUrl,
				address:'点击选择地址'
			};
		},
		methods: {
			provinceCityAreaChange: function (data) {
				this.address=data.join('');//逗号将数组拼接为字符串
				//console.log(data);
			},
		}
	}
</script>

<style lang="scss" scoped>
.banner{
	width:100%;
}
.content{
	width:90%;
	margin:1em  auto 3em;
	padding:0 1em;
	border:1px solid #DFDFDF;
	.grid-list{
		&.title{
			height:75rpx;
			font-weight: 700;
		}
		&.inputFrame{
			margin-top:1em;
			.input{
				width:100%;
				height:35px;
				box-sizing: border-box;
				padding-left:0.5em;
				border:1px solid #DFDFDF;
				border-radius: 10px;
			}
			.input-select{
				padding:6px 12px;
				border:1px solid #DFDFDF;
				border-radius: 10px;
			}
		}
		&.upload-title{
			margin-top:1em;
			height:3em;
			.text2{
				color:#9E9E9E;
			}
		}
		&.upload-box{
			margin:1em 0 0;
			.upload-btn{
				height:200rpx;
				width:200rpx;
				border:1px solid #D9D7D7;
				border-radius: 10px;
				.plus{
					color:#D9D7D7;
					font-size:$uni-font-size-larger;
				}
			}
		}
		
	}
	
}
</style>
