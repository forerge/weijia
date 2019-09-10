<template>
	<view>
		<!-- 存放富文本标签 -->
		<rich-text class="rich-text" ><a href="https://www.jd.com">关于</a></rich-text>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				
			}
		},
		onLoad(e) {
			//接收上一跳转页面传递过来的get数据
			console.log(e);
		},
		methods: {
			
		}
	}
</script>

<style>

</style>
