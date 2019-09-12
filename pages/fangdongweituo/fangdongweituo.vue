<template>
	<view>
		<nav-top-return title="房东委托"/>
		<view class="left-title">补充内容</view>
		<view class="fang-textarea">
			 <textarea :placeholder="areainput" auto-height :value="msg" ></textarea>
		</view>
		<view>{{msg}}</view>
		<!-- <view class="left-title">房屋配置</view> -->
		
		<checkboxColumnFrame columnTitle="房屋配置" :checkboxVal="['床','宽带']"/>
		
	</view>
</template>

<script>
	import checkboxColumnFrame from "../../components/dzy-checkbox-column-frame/dzy-checkbox-column-frame.vue";
	import bigButonYellow from "../../components/yw-big-buton-yellow/yw-big-buton-yellow.vue";
	export default {
		components:{
			checkboxColumnFrame,
			bigButonYellow
		},
		data() {
			return {
				areainput:'详细的描述会大大的增加快速出租的机会，可以介绍房子引人的地方',
				msg:'测试'
			}
		},
		methods: {
			
		}
	}
</script>

<style lang="scss">
	
</style>
