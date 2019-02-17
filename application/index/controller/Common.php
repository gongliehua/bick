<?php
namespace app\index\controller;

use think\Controller;

class Common extends Controller
{
	public function _initialize(){
		//当前位置
		if(input('cateid')){
			$this->getPos(input('cateid'));
		}
		if(input('artid')){
			$articles=db('article')->field('cateid')->find(input('artid'));
			$cateid=$articles['cateid'];
			$this->getPos($cateid);
		}

		//网站配置项
		$this->getConf();

		//为子栏目导航
		$this->getNavCates();

		//底部导航信息
		$cateM=new \app\index\model\Cate();
        $recBottom=$cateM->getRecBottom();
        $this->assign('recBottom',$recBottom);

	}

	//循环出导航
	public function getNavCates(){
		//查询出pdi=0的 一级导航
		$cateres=db('cate')->where(array('pid'=>0))->select();

		//循环查询2级导航 并复给$cateres[$k]['children']
		foreach ($cateres as $k => $v) {
			$children=db('cate')->where(array('pid'=>$v['id']))->select();
			if($children){
				$cateres[$k]['children']=$children;
			}else{
				$cateres[$k]['children']=0;
			}
		}
		$this->assign('cateres',$cateres);
	}

	//配置项
	public function getConf(){
		$conf=new \app\index\model\Conf();

		//获取二维数组
		$_confres=$conf->getAllConf();

		//换成一维数组
		$confres=array();
		foreach ($_confres as $k => $v) {
			$confres[$v['enname']]=$v['value'];
		}

		$this->assign('confres',$confres);
	}

	//面包屑
	public function getPos($cateid){
        $cate=new \app\index\model\Cate();
        $posArr=$cate->getparents($cateid);
        $this->assign('posArr',$posArr);
	}

}
