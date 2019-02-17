<?php
namespace app\index\controller;

use app\index\model\Article;

class Search extends Common
{
    public function index()
    {
        //获取热们文章
    	$article=new Article();
        $serHot=$article->getSerHot();

        $keywords=input('keywords');
        $serRes=db('article')->where('title','like','%'.$keywords.'%')->order('id desc')->paginate(2,false,$config=['query'=>array('keywords'=>$keywords)]);
        $this->assign(array(
            'serRes'=>$serRes,
            'keywords'=>$keywords,
            'serHot'=>$serHot,
            ));
        return view('search');
    }
}
