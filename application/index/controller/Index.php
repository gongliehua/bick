<?php
namespace app\index\controller;

class Index extends Common
{
    public function index()
    {
    	//首页最新文章调用
    	$articleM=new \app\index\model\Article();
    	$newArticleRes=$articleM->getNewArticle();

        //获取推荐栏目
        $cateM=new \app\index\model\Cate();
        $recIndex=$cateM->getRecIndex();

        //推荐文章
        $recArt=$articleM->getRecArt();

    	//友情链接
    	$linkRes=db('link')->order('sort desc')->select();
    	$siteHotArt=$articleM->getSiteHot();
    	$this->assign(array(
    		'newArticleRes'=>$newArticleRes,
    		'siteHotArt'=>$siteHotArt,
            'linkRes'=>$linkRes,
            'recArt'=>$recArt,
            'recIndex'=>$recIndex,
    		));
        return view();
    }
}
