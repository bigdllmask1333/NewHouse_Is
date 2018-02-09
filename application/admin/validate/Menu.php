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

namespace app\admin\validate;

use think\Validate;

/**
 * 节点验证器
 * @package app\admin\validate
 *
 */
class Menu extends Validate
{
    //定义验证规则
    protected $rule = [
        'module|所属模块' => 'require',
        'pid|所属节点'    => 'require',
        'title|节点标题'  => 'require',
    ];

    //定义验证提示
    protected $message = [
        'module.require' => '请选择所属模块',
        'pid.require'    => '请选择所属节点',
    ];
}
