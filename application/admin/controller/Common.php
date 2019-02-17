<?php
namespace app\admin\controller;

use think\Controller;
use think\Request;

class Common extends Controller
{
    public function _initialize(){
        if(!session('id') || !session('name')){
            $this->error('您尚未登陆系统！',url('login/index'));
        }

        //实例化auth
        $auth=new Auth();

        //获取路径
        $request=Request::instance();
        $con=$request->controller();
        $action=$request->action();
        $name=$con.'/'.$action;

        //权限检测
       $notCheck=array('Index/index','Admin/lst','Admin/logout');
       if(session('id') != 1){
       		if(!in_array($name,$notCheck)){
       			if(!$auth->check($name,session('id'))){
       				$this->error('没有权限',url('index/index'));
       			}
       		}

       }
    }


}
