<?php
// +----------------------------------------------------------------------
// | 房屋中介系统 [   ]
// +----------------------------------------------------------------------
// | 版权所有 2016~2017 XXX限公司 [    ]
// +----------------------------------------------------------------------
// | 官方网站: http:// .com
// +----------------------------------------------------------------------
// | 开源协议 ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------

namespace app\admin\controller;

use app\common\controller\Common;

/**
 * ie提示页面控制器
 * @package app\admin\controller
 */
class Ie extends Common
{
    /**
     * 显示ie提示
     *    
     * @return mixed
     */
    public function index(){
        // ie浏览器判断
        if (get_browser_type() == 'ie') {
            return $this->fetch();
        } else {
            $this->redirect('admin/index/index');
        }
    }
}