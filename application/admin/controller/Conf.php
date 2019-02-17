<?php
namespace app\admin\controller;

use app\admin\controller\Common;
use app\admin\model\Conf as ConfModel;

class Conf extends Common
{
    public function lst(){
        if(request()->isPost()){
            $data=input('post.');
            $conf=new ConfModel();
            foreach ($data as $k => $v) {
                $conf->update(['id'=>$k,'sort'=>$v]);
            }
            $this->success('更新排序成功！',url('lst'));
            return;
        }
        $confres=ConfModel::order('sort desc')->paginate(10);
        $this->assign('confres',$confres);
        return view();
    }

     public function add(){
        if(request()->isPost()){
            $data=input('post.');

            //验证
            $validate=\think\Loader::validate('Conf');
            if(!$validate->scene('add')->check($data)){
                $this->error($validate->getError());
            }

            if($data['values']){
                $data['values']=str_replace('，', ',', $data['values']);
            }
            $conf=new ConfModel();
            if($conf->save($data)){
                $this->success('添加配置成功！',url('lst'));
            }else{
                $this->error('添加配置成功！');
            }
            return;
        }
        return view();
    }

     public function edit(){
        if(request()->isPost()){
            $data=input('post.');

            //验证
            $validate=\think\Loader::validate('Conf');
            if(!$validate->scene('edit')->check($data)){
                $this->error($validate->getError());
            }
            
            if($data['values']){
                $data['values']=str_replace('，', ',', $data['values']);
            }
            $conf=new ConfModel();
            $save=$conf->save($data,['id'=>$data['id']]);
            if($save !== false){
                $this->success('修改配置成功！',url('lst'));
            }else{
                $this->error('修改配置失败！');
            }
        }
        $confs=ConfModel::find(input('id'));
        $this->assign('confs',$confs);
        return view();
    }

    public function del(){
        $del=ConfModel::destroy(input('id'));
        if($del){
            $this->success('删除配置选成功！',url('lst'));
        }else{
            $this->error('删除配置选失败！');
        }
    }

    public function conf(){
        if(request()->isPost()){
            $data=input('post.');

            //获取提交数据的字段
            $formarr=array();
            foreach ($data as $k => $v) {
                $formarr[]=$k;
            }

            //获取数据表中的字段
            $_confarr=db('conf')->field('enname')->select();
            $confarr=array();
            foreach ($_confarr as $k => $v) {
                $confarr[]=$v['enname'];
            }
            
            //对比找到字段
            $checkboxarr=array();
            foreach ($confarr as $k => $v) {
                if(!in_array($v, $formarr)){
                    $checkboxarr[]=$v;
                }
            }
            
            //判断并循环更新
            if($checkboxarr!==false){
                foreach ($checkboxarr as $key => $value) {
                    ConfModel::where('enname',$value)->update(['value'=>null]);
                }
            }

            if($data){
                foreach ($data as $k => $v) {
                    ConfModel::where('enname',$k)->update(['value'=>$v]);
                }
                $this->success('修改配置成功！',url('lst'));
            }
            return;
        }
        $confres=ConfModel::order('sort desc')->select();
        $this->assign('confres',$confres);
        return view();
    }

}
