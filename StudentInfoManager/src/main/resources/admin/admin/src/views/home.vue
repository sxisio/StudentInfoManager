<template>
<div class="content" :style='{"width":"100%","padding":"30px","background":"url(http://codegen.caihongy.cn/20221130/95ab6b2e322c4d18a548562ba480af2a.png) no-repeat center bottom","height":"100vh"}'>
	<div class="text" :style='{"margin":"20px auto 40px","fontSize":"32px","color":"#333","textAlign":"center","background":"none","fontWeight":"bold"}'>欢迎使用 {{this.$project.projectName}}</div>
    <div class="cardView">
        <div class="cards" :style='{"margin":"0 0 20px 0","alignItems":"center","justifyContent":"center","display":"flex"}'>
			<div :style='{"border":"1px solid #eee","margin":"0 10px","borderRadius":"4px","background":"rgba(255,255,255,.6)","display":"flex"}' v-if="isAuth('xuesheng','首页总数')">
				<div :style='{"borderColor":"#f0f0f0","borderRadius":"4px 0px 0px 4px","background":"none","borderWidth":"0 1px 0 0","width":"80px","borderStyle":"solid","height":"80px"}'></div>
				<div :style='{"alignItems":"center","borderRadius":"0px 4px 4px 0px","flexDirection":"column","background":"none","display":"flex","width":"160px","justifyContent":"center"}'>
					<div :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"20px","color":"#666","height":"24px"}'>{{xueshengCount}}</div>
					<div :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"14px","color":"#666","height":"24px"}'>学生总数</div>
				</div>
			</div>
        </div>
        <div style="display: flex;align-items: center;width: 100%;margin-bottom: 10px;">
            <el-card style="width: 100%;margin: 0 10px;" v-if="isAuth('xuesheng','首页统计')">
                <div id="xueshengChart1" style="width:100%;height:400px;"></div>
            </el-card>
        </div>
    </div>
</div>
</template>
<script>
//1
import router from '@/router/router-static'
import * as echarts from 'echarts'
export default {
	data() {
		return {
            xueshengCount: 0,
		};
	},
  mounted(){
    this.init();
    this.getxueshengCount();
    this.xueshengChat1();
  },
  methods:{
    init(){
        if(this.$storage.get('Token')){
        this.$http({
            url: `${this.$storage.get('sessionTable')}/session`,
            method: "get"
        }).then(({ data }) => {
            if (data && data.code != 0) {
            router.push({ name: 'login' })
            }
        });
        }else{
            router.push({ name: 'login' })
        }
    },
    getxueshengCount() {
        this.$http({
            url: `xuesheng/count`,
            method: "get"
        }).then(({
            data
        }) => {
            if (data && data.code == 0) {
                this.xueshengCount = data.data
            }
        })
    },

    xueshengChat1() {
      this.$nextTick(()=>{

        var xueshengChart1 = echarts.init(document.getElementById("xueshengChart1"),'macarons');
        this.$http({
            url: "xuesheng/group/xingbie",
            method: "get",
        }).then(({ data }) => {
            if (data && data.code === 0) {
                let res = data.data;
                let xAxis = [];
                let yAxis = [];
                let pArray = []
                for(let i=0;i<res.length;i++){
                    xAxis.push(res[i].xingbie);
                    yAxis.push(parseFloat((res[i].total)));
                    pArray.push({
                        value: parseFloat((res[i].total)),
                        name: res[i].xingbie
                    })
                }
                var option = {};
                option = {
                        title: {
                            text: '男女比例',
                            left: 'center'
                        },
                        tooltip: {
                          trigger: 'item',
                          formatter: '{b} : {c} ({d}%)'
                        },
                        series: [
                            {
                                type: 'pie',
                                radius: '55%',
                                center: ['50%', '60%'],
                                data: pArray,
                                emphasis: {
                                    itemStyle: {
                                        shadowBlur: 10,
                                        shadowOffsetX: 0,
                                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                                    }
                                }
                            }
                        ]
                };
                // 使用刚指定的配置项和数据显示图表。
                xueshengChart1.setOption(option);
                  //根据窗口的大小变动图表
                window.onresize = function() {
                    xueshengChart1.resize();
                };
            }
        });
      })
    },






  }
};
</script>
<style lang="scss" scoped>
    .cardView {
        display: flex;
        flex-wrap: wrap;
        width: 100%;

        .cards {
            display: flex;
            align-items: center;
            width: 100%;
            margin-bottom: 10px;
            justify-content: center;
            .card {
                width: calc(25% - 20px);
                margin: 0 10px;
                /deep/.el-card__body{
                    padding: 0;
                }
            }
        }
    }
</style>
