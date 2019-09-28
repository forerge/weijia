<template>
	<view>
		<tuijianContentList :tuijianContent="tuijianContent"/>
	</view>
</template> 

<script>
	import tuijianContentList from '../../components/dzy-tuijian-content-list/dzy-tuijian-content-list.vue'
	export default {
		components:{
			tuijianContentList
		},
		data() {
			return {
				//我的发布
				tuijianContent:[
					{
					imgUrl:'../../static/images/tuijian-thumbnail.png',
					title:'合租.天通苑北二区 3居室.1厅.1卫',
					area:'15m²',
					floor:'12/18层',
					towards:'朝南',
					subwayDistance:'距5号线800m',
					pledge:'押一付一',
					subway:'离地铁近',
					veranda:'有阳台',
					monthPrice:'2300'
					},{
					imgUrl:'../../static/images/tuijian-thumbnail.png',
					title:'合租.天通苑北二区 3居室.1厅.1卫',
					area:'15m²',
					floor:'12/18层',
					towards:'朝南',
					subwayDistance:'距5号线800m',
					pledge:'押一付一',
					subway:'离地铁近',
					veranda:'有阳台',
					monthPrice:'2300'
					},{
					imgUrl:'../../static/images/tuijian-thumbnail.png',
					title:'合租.天通苑北二区 3居室.1厅.1卫',
					area:'15m²',
					floor:'12/18层',
					towards:'朝南',
					subwayDistance:'距5号线800m',
					pledge:'押一付一',
					subway:'离地铁近',
					veranda:'有阳台',
					monthPrice:'2300'
					}
				]
			};
		}
	}
</script>

<style lang="scss">

</style>
