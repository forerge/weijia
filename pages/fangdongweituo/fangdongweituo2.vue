<template>
	<view>
		<textareaColumnFrame columnTitle="补充内容" placeholder="详细的描述会大大增加快速出租的机会！可以介绍房子引人的地方，交通和周边环境，可以入住的时间，对租客的要求。"/>
		<checkboxColumnFrame columnTitle="房屋配置" :checkboxVal="['宽带','床','衣柜','沙发','桌椅','电视','空调','洗衣机','冰箱','热水器','燃气灶','抽烟机','电磁炉','微波炉','独立卫生间','阳台','可做饭']"/>
		<bigButonYellow big_button_yellow="确认发布"/>
	</view>
</template>

<script>
	import checkboxColumnFrame from "../../components/dzy-checkbox-column-frame/dzy-checkbox-column-frame.vue";
	import textareaColumnFrame from "../../components/dzy-textarea-column-frame/dzy-textarea-column-frame.vue";
	import bigButonYellow from "../../components/yw-big-buton-yellow/yw-big-buton-yellow.vue";
	export default {
		components:{
			checkboxColumnFrame,
			textareaColumnFrame,
			bigButonYellow
		},
		data() {
			return {
				
			}
		},
		methods: {
			
		}
	}
</script>

<style lang="scss">

	
</style>
