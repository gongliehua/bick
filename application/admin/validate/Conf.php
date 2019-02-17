<?php
namespace app\admin\validate;

use think\Validate;

class Conf extends Validate
{
    protected $rule=[
        'cnname' =>  'unique:conf|require|max:60',
        'enname' =>  'unique:conf|require|max:60',
        'type'   =>  'require|number',
    ];

    protected $message=[
        'cnname.unique'=>'中文名称不得重复',
        'cnname.require'=>'中文名称不得为空',
        'cnname.max'=>'中文名称长度不得大于60',
        'enname.unique'=>'英文名称不得重复',
        'enname.require'=>'英文名称不得为空',
        'enname.max'=>'英文名称长度不得大于60',
        'type.require'=>'配置类型不得为空',
        'type.number'=>'配置类型得为数字',
    ];

    //场景配置
    protected $scene = [
        'add' =>['cnname','enname','type'],
        'edit'=>['cnname','enname'],
    ];
}
