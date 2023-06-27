const base = {
    get() {
        return {
            url : "http://localhost:8080/studentinfomanager/",
            name: "studentinfomanager",
            // 退出到首页链接
            indexUrl: ''
        };
    },
    getProjectName(){
        return {
            projectName: "基于SpringBoot的学生综合信息管理系统"
        } 
    }
}
export default base
