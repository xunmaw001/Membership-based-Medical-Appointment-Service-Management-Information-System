
var projectName = '会员制医疗预约服务管理信息系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
        name: '我的收藏',
        url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '医院信息',
	url: './pages/yiyuanxinxi/list.html'
}, 
{
	name: '坐诊信息',
	url: './pages/zuozhenxinxi/list.html'
}, 
{
	name: '核酸检测',
	url: './pages/hesuanjiance/list.html'
}, 
{
	name: '疾控通知',
	url: './pages/jikongtongzhi/list.html'
}, 
{
	name: '健康资讯',
	url: './pages/jiankangzixun/list.html'
}, 

{
	name: '就诊引导',
	url: './pages/news/list.html'
},
]

var adminurl =  "http://localhost:8080/springbootg15ia/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["新增","查看","修改","删除","生成"],"menu":"会员","menuJump":"列表","tableName":"huiyuan"}],"menu":"会员管理"},{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["新增","查看","修改","删除"],"menu":"医生","menuJump":"列表","tableName":"yisheng"}],"menu":"医生管理"},{"child":[{"appFrontIcon":"cuIcon-flashlightopen","buttons":["新增","查看","修改","删除"],"menu":"医院信息","menuJump":"列表","tableName":"yiyuanxinxi"}],"menu":"医院信息管理"},{"child":[{"appFrontIcon":"cuIcon-present","buttons":["新增","查看","修改","删除"],"menu":"科室信息","menuJump":"列表","tableName":"keshixinxi"}],"menu":"科室信息管理"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["查看","删除","审核","修改"],"menu":"坐诊信息","menuJump":"列表","tableName":"zuozhenxinxi"}],"menu":"坐诊信息管理"},{"child":[{"appFrontIcon":"cuIcon-present","buttons":["新增","查看","修改","删除"],"menu":"核酸检测","menuJump":"列表","tableName":"hesuanjiance"}],"menu":"核酸检测管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","删除"],"menu":"挂号预约","menuJump":"列表","tableName":"guahaoyuyue"}],"menu":"挂号预约管理"},{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["新增","查看","修改","删除"],"menu":"药品信息","menuJump":"列表","tableName":"yaopinxinxi"}],"menu":"药品信息管理"},{"child":[{"appFrontIcon":"cuIcon-flashlightopen","buttons":["查看","删除"],"menu":"诊断信息","menuJump":"列表","tableName":"zhenduanxinxi"}],"menu":"诊断信息管理"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["删除","查看"],"menu":"处方信息","menuJump":"列表","tableName":"chufangxinxi"}],"menu":"处方信息管理"},{"child":[{"appFrontIcon":"cuIcon-album","buttons":["查看","删除"],"menu":"住院信息","menuJump":"列表","tableName":"zhuyuanxinxi"}],"menu":"住院信息管理"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["查看","删除"],"menu":"在线咨询","menuJump":"列表","tableName":"zaixianzixun"}],"menu":"在线咨询管理"},{"child":[{"appFrontIcon":"cuIcon-full","buttons":["删除","查看"],"menu":"咨询回复","menuJump":"列表","tableName":"zixunhuifu"}],"menu":"咨询回复管理"},{"child":[{"appFrontIcon":"cuIcon-form","buttons":["查看","删除","审核","结果"],"menu":"核酸预约","menuJump":"列表","tableName":"hesuanyuyue"}],"menu":"核酸预约管理"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["查看","删除"],"menu":"疾控通知","menuJump":"列表","tableName":"jikongtongzhi"}],"menu":"疾控通知管理"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["删除","查看"],"menu":"健康资讯","menuJump":"列表","tableName":"jiankangzixun"}],"menu":"健康资讯管理"},{"child":[{"appFrontIcon":"cuIcon-flashlightopen","buttons":["查看","删除"],"menu":"健康档案","menuJump":"列表","tableName":"jiankangdangan"}],"menu":"健康档案管理"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","修改","删除"],"menu":"检测结果","menuJump":"列表","tableName":"jiancejieguo"}],"menu":"检测结果管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看","报告","删除"],"menu":"体检信息","menuJump":"列表","tableName":"tijianxinxi"}],"menu":"体检信息管理"},{"child":[{"appFrontIcon":"cuIcon-time","buttons":["查看","修改","删除"],"menu":"体检报告","menuJump":"列表","tableName":"tijianbaogao"}],"menu":"体检报告管理"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["新增","查看","修改","删除"],"menu":"使用须知","menuJump":"列表","tableName":"shiyongxuzhi"}],"menu":"使用须知管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","修改","删除"],"menu":"条形码机","menuJump":"列表","tableName":"tiaoxingmaji"}],"menu":"条形码机管理"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"就诊引导","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看"],"menu":"医院信息列表","menuJump":"列表","tableName":"yiyuanxinxi"}],"menu":"医院信息模块"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["查看","预约","咨询"],"menu":"坐诊信息列表","menuJump":"列表","tableName":"zuozhenxinxi"}],"menu":"坐诊信息模块"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","预约"],"menu":"核酸检测列表","menuJump":"列表","tableName":"hesuanjiance"}],"menu":"核酸检测模块"},{"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看"],"menu":"疾控通知列表","menuJump":"列表","tableName":"jikongtongzhi"}],"menu":"疾控通知模块"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看"],"menu":"健康资讯列表","menuJump":"列表","tableName":"jiankangzixun"}],"menu":"健康资讯模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","修改","删除","支付"],"menu":"挂号预约","menuJump":"列表","tableName":"guahaoyuyue"}],"menu":"挂号预约管理"},{"child":[{"appFrontIcon":"cuIcon-flashlightopen","buttons":["查看"],"menu":"诊断信息","menuJump":"列表","tableName":"zhenduanxinxi"}],"menu":"诊断信息管理"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["查看","支付"],"menu":"处方信息","menuJump":"列表","tableName":"chufangxinxi"}],"menu":"处方信息管理"},{"child":[{"appFrontIcon":"cuIcon-album","buttons":["查看","支付"],"menu":"住院信息","menuJump":"列表","tableName":"zhuyuanxinxi"}],"menu":"住院信息管理"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["查看","修改","删除"],"menu":"在线咨询","menuJump":"列表","tableName":"zaixianzixun"}],"menu":"在线咨询管理"},{"child":[{"appFrontIcon":"cuIcon-full","buttons":["查看"],"menu":"咨询回复","menuJump":"列表","tableName":"zixunhuifu"}],"menu":"咨询回复管理"},{"child":[{"appFrontIcon":"cuIcon-form","buttons":["查看","修改","删除","支付"],"menu":"核酸预约","menuJump":"列表","tableName":"hesuanyuyue"}],"menu":"核酸预约管理"},{"child":[{"appFrontIcon":"cuIcon-flashlightopen","buttons":["新增","查看","修改","删除","打印"],"menu":"健康档案","menuJump":"列表","tableName":"jiankangdangan"}],"menu":"健康档案管理"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看"],"menu":"检测结果","menuJump":"列表","tableName":"jiancejieguo"}],"menu":"检测结果管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看"],"menu":"体检信息","menuJump":"列表","tableName":"tijianxinxi"}],"menu":"体检信息管理"},{"child":[{"appFrontIcon":"cuIcon-time","buttons":["查看"],"menu":"体检报告","menuJump":"列表","tableName":"tijianbaogao"}],"menu":"体检报告管理"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["查看"],"menu":"使用须知","menuJump":"列表","tableName":"shiyongxuzhi"}],"menu":"使用须知管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看"],"menu":"条形码机","menuJump":"列表","tableName":"tiaoxingmaji"}],"menu":"条形码机管理"},{"child":[{"appFrontIcon":"cuIcon-favor","buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看"],"menu":"医院信息列表","menuJump":"列表","tableName":"yiyuanxinxi"}],"menu":"医院信息模块"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["查看","预约","咨询"],"menu":"坐诊信息列表","menuJump":"列表","tableName":"zuozhenxinxi"}],"menu":"坐诊信息模块"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","预约"],"menu":"核酸检测列表","menuJump":"列表","tableName":"hesuanjiance"}],"menu":"核酸检测模块"},{"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看"],"menu":"疾控通知列表","menuJump":"列表","tableName":"jikongtongzhi"}],"menu":"疾控通知模块"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看"],"menu":"健康资讯列表","menuJump":"列表","tableName":"jiankangzixun"}],"menu":"健康资讯模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"会员","tableName":"huiyuan"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["新增","查看","修改","删除"],"menu":"坐诊信息","menuJump":"列表","tableName":"zuozhenxinxi"}],"menu":"坐诊信息管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","审核","诊断"],"menu":"挂号预约","menuJump":"列表","tableName":"guahaoyuyue"}],"menu":"挂号预约管理"},{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看"],"menu":"药品信息","menuJump":"列表","tableName":"yaopinxinxi"}],"menu":"药品信息管理"},{"child":[{"appFrontIcon":"cuIcon-flashlightopen","buttons":["查看","修改","删除","住院","处方","体检"],"menu":"诊断信息","menuJump":"列表","tableName":"zhenduanxinxi"}],"menu":"诊断信息管理"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["查看","修改","删除"],"menu":"处方信息","menuJump":"列表","tableName":"chufangxinxi"}],"menu":"处方信息管理"},{"child":[{"appFrontIcon":"cuIcon-album","buttons":["查看","修改","删除"],"menu":"住院信息","menuJump":"列表","tableName":"zhuyuanxinxi"}],"menu":"住院信息管理"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["查看","回复"],"menu":"在线咨询","menuJump":"列表","tableName":"zaixianzixun"}],"menu":"在线咨询管理"},{"child":[{"appFrontIcon":"cuIcon-full","buttons":["查看","修改","删除"],"menu":"咨询回复","menuJump":"列表","tableName":"zixunhuifu"}],"menu":"咨询回复管理"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["新增","查看","修改","删除"],"menu":"疾控通知","menuJump":"列表","tableName":"jikongtongzhi"}],"menu":"疾控通知管理"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["新增","查看","修改","删除"],"menu":"健康资讯","menuJump":"列表","tableName":"jiankangzixun"}],"menu":"健康资讯管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看","修改","删除"],"menu":"体检信息","menuJump":"列表","tableName":"tijianxinxi"}],"menu":"体检信息管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看"],"menu":"医院信息列表","menuJump":"列表","tableName":"yiyuanxinxi"}],"menu":"医院信息模块"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["查看","预约","咨询"],"menu":"坐诊信息列表","menuJump":"列表","tableName":"zuozhenxinxi"}],"menu":"坐诊信息模块"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","预约"],"menu":"核酸检测列表","menuJump":"列表","tableName":"hesuanjiance"}],"menu":"核酸检测模块"},{"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看"],"menu":"疾控通知列表","menuJump":"列表","tableName":"jikongtongzhi"}],"menu":"疾控通知模块"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看"],"menu":"健康资讯列表","menuJump":"列表","tableName":"jiankangzixun"}],"menu":"健康资讯模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"医生","tableName":"yisheng"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
