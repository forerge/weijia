import Vue from 'vue'
import App from './App'
//导入自定义常量配置文件
import commonConfig from "common/config.js"
Vue.prototype.$commonConfig=commonConfig;//将对象挂载到Vue

Vue.config.productionTip = false
App.mpType = 'app'
const app = new Vue({
	...App
})
app.$mount()
