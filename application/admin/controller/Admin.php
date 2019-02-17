<?php
namespace app\admin\controller;

use app\admin\controller\Common;
use app\admin\model\Admin as AdminModel;

class Admin extends Common
{
    public function lst()
    {
        //获取用户组
        $auth=new Auth();
        $groups=$auth->getGroups(session('id'));

        $admin=new AdminModel();
        $adminres=$admin->getadmin();

        //获取title
        foreach ($adminres as $k => $v) {
            $_groupTitle=$auth->getGroups($v['id']);
            $groupTitle=$_groupTitle[0]['title'];
            $v['groupTitle']=$groupTitle;
        }

        $this->assign('adminres',$adminres);
        return view();
    }

    public function add()
    {
        if(request()->isPost()){
            $data=input('post.');
            $validate=\think\Loader::validate('Admin');
            
            //场景验证
            if(!$validate->scene('add')->check($data)){
                $this->error($validate->getError());
            }
            $admin=new AdminModel();
            if($admin->addadmin($data)){
                $this->success('添加管理员成功！',url('lst'));
            }else{
                $this->error('添加管理员失败！');
            }
            return;
        }

        //用户组
        $authGroupRes=db('auth_group')->select();
        $this->assign('authGroupRes',$authGroupRes);
        return view();
    }

    public function edit($id)
    {
        $admins=db('admin')->find($id);

        if(request()->isPost()){
            $data=input('post.');
            $validate=\think\Loader::validate('Admin');//场景验证
            if(!$validate->scene('edit')->check($data)){
                $this->error($validate->getError());
            }
            $admin=new AdminModel();
            $saveadmin=$admin->saveadmin($data,$admins);
            if($saveadmin == '2'){
                $this->error('管理员用户名不能为空！');
            }
            if($saveadmin !== false){
                $this->success('修改成功',url('lst'));
            }else{
                $this->error('修改失败！');
            }
            return;
        }
        
        if(!$admins){
            $this->error('该管理员不存在');
        }

        $authGroupAccess=db('auth_group_access')->where(array('uid'=>$id))->find();
        //用户组
        $authGroupRes=db('auth_group')->select();
        $this->assign('authGroupRes',$authGroupRes);
        $this->assign('admin',$admins);
        $this->assign('groupId',$authGroupAccess['group_id']);
        return view();
    }

    public function del($id){
        $admin=new AdminModel();
        $delnum=$admin->deladmin($id);
        if($delnum == 1){
            $this->success('删除管理员成功！',url('lst'));
        }else{
            $this->error('删除管理员失败！');
        }
    }

    public function logout(){
        session(null);
        $this->success('退出成功！',url('login/index'));
    }
}
