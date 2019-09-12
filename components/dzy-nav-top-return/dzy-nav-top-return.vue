<template>
	<view>
		<view class="dzy-navigation-top" :style="{paddingTop:statusBarHeight}">
			<view class="dzy-navigation">
				{{title}}
				<navigator class="dzy-navigation-left-return" open-type="navigateBack" hover-class="none">
					&lsaquo;
				</navigator>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		props:['title'],
		data() {
			return {
			statusBarHeight: this.$statusBarHeight//赋值状态栏高度
			}
		}
	}
</script>

<style lang="scss">
	.dzy-navigation-top{
	background: #F8F8F8;
	color:black;
	.dzy-navigation{
		position: relative;
		width:100%;
		height:45px;
		line-height: 45px;
		text-align: center;
		font-size: 0.7em;
		.dzy-navigation-left-return{
			position: absolute;
			left:0;
			top:0;
			width:45px;
			font-size: 1.6em;
			color:black;
		}
	}
}
</style>
