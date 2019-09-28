<template>
	<view>
		<columnTitle :columnTitle="columnTitle"/>
		<view class="checkbox-column-frame">
		<view class="grid grid-col-4 grid-fixed-width checkbox-column">
			<block v-for="(val,index) in checkboxVal" :key="index">
			<view class="grid-list grid-row-align-center">
					<text class="text" :class="{active: index===0 }">{{val}}</text>
			</view> 
			</block>
		</view>
		</view>
		
	</view>
</template>

<script>
	import columnTitle from "../dzy-column-title/dzy-column-title.vue";
	export default {
		components:{
			columnTitle
		},
		props:[
			"columnTitle",
			"checkboxVal"
		],
		data() {
			return {
				
			}
		},
		methods: {
			
		}
	}
</script>

<style lang="scss" >	
	.checkbox-column-frame{
		padding-bottom:30rpx;
		.checkbox-column {
			.grid-list{
				height: 50px !important;
				.text{
					font-size:$uni-font-size-sm-minus;
					padding:3px 15px;
					border-radius: 15px;
					color:#A0A0A0;
					border:1px solid #A0A0A0;
					box-sizing: border-box;
				}
				.active{
					background:#FDE648 ;
					border-color:#FDE648;
					color:#333;
				}
			}
		}
	}
</style>
