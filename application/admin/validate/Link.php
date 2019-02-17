<?php
namespace app\admin\validate;

use think\Validate;

class Link extends Validate
{
    protected $rule=[
        'title' =>  'unique:link|require|max:25',
        'url'   =>  'url|unique:link|require|max:60',
        'desc'  =>  'require',
    ];

    protected $message=[
        'title.require'=>'链接标题不得为空',
        'title.unique'=>'链接标题不得重复',
        'title.max'=>'链接标题不得大于25个字符',
        'url.require'=>'链接地址不得为空',
        'url.unique'=>'链接地址不得重复',
        'url.max'=>'链接地址不得大于60个字符',
        'url.url'=>'链接地址格式不正确',

    ];

    protected $scene=[
        'add' =>['title','url','desc'],
        'edit' =>['title','url'],
    ];
}
