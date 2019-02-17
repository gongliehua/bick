<?php
namespace app\admin\model;

use think\Model;

class Article extends Model
{
    protected static function init(){
        Article::event('before_insert',function($article){
            if($_FILES['thumb']['tmp_name']){
                $file = request()->file('thumb');
                //获取上传目录
                $uploads=config('view_replace_str.uploads');
                //获取根目录
                $www=$_SERVER['DOCUMENT_ROOT'];
                $str_www=str_replace('\\', '/', $www);
                //上传
                $info = $file->move($str_www.$uploads);
                // ROOT_PATH . 'public/uploads' 之用这方法写的，感觉不灵活
                if($info){
                    // $thumb = ROOT_PATH . 'public' .DS . 'uploads/'.$info->getExtension();
                    //文件保存目录是 date\000.jpg 所以替换一下\
                    $str_path=str_replace('\\','/',$info->getSaveName());
                    $article['thumb']=$uploads.'/'.$str_path;
                }
            }
        });

        Article::event('before_update',function($article){
            if($_FILES['thumb']['tmp_name']){
                $arts=Article::find($article->id);
                $thumbpath=$_SERVER['DOCUMENT_ROOT'].$arts['thumb'];
                if(file_exists($thumbpath)){
                    @unlink($thumbpath);
                }
                $file = request()->file('thumb');

                //获取上传目录
                $uploads=config('view_replace_str.uploads');
                //获取根目录
                $www=$_SERVER['DOCUMENT_ROOT'];
                $str_www=str_replace('\\', '/', $www);

                $info = $file->move($str_www.$uploads);
                if($info){
                    // $thumb = ROOT_PATH . 'public' .DS . 'uploads/'.$info->getExtension();
                    $str_path=str_replace('\\','/',$info->getSaveName());
                    $article['thumb']=$uploads.'/'.$str_path;
                }
            }
        });

        Article::event('before_delete',function($article){
            $arts=Article::find($article->id);
            $thumbpath=$_SERVER['DOCUMENT_ROOT'].$arts['thumb'];
            if(file_exists($thumbpath)){
                @unlink($thumbpath);
            }
        });
    }

}
