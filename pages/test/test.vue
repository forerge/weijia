<template>
    <view>
   
       
			<view class="uni-title">
				日期：{{year}}年{{month}}月{{day}}日
			</view>
		
        <picker-view class="picker-view" :value="value" @change="bindChange">
            <picker-view-column>
                <view class="item" v-for="(item,index) in years" :key="index">{{item}}年</view>
            </picker-view-column>
            <picker-view-column>
                <view class="item" v-for="(item,index) in months" :key="index">{{item}}月</view>
            </picker-view-column>
            <picker-view-column>
                <view class="item" v-for="(item,index) in days" :key="index">{{item}}日</view>
            </picker-view-column>
        </picker-view>
    </view>
</template>

<script>
    export default {
        data () {
            const date = new Date()
            const years = []
            const year = date.getFullYear()
            const months = []
            const month = date.getMonth() + 1
            const days = []
            const day = date.getDate()

            for (let i = 1990; i <= date.getFullYear(); i++) {
                years.push(i)
            }

            for (let i = 1; i <= 12; i++) {
                months.push(i)
            }

            for (let i = 1; i <= 31; i++) {
                days.push(i)
            }
            return {
                title: 'picker-view',
                years,
                year,
                months,
                month,
                days,
                day,
                value: [9999, month - 1, day - 1],
				
            }
        },
        methods: {
            bindChange (e) {
                const val = e.detail.value
                this.year = this.years[val[0]]
                this.month = this.months[val[1]]
                this.day = this.days[val[2]]
            }
        }
    }
</script>

<style lang="scss">
    .picker-view{
				position: fixed;
				bottom:0;
        width: 100%;
        height: 300upx; /* 高度必须存在否则不显示 */
				border-top:1px solid #F2F2F2;
				.item {
					height:2em;
				   display: flex;
					 flex-direction: row;
					 align-items: center;
					 justify-content: center;
				}
    }
</style>
