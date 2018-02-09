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

namespace app\cms\admin;

use app\admin\controller\Admin;
use app\common\builder\ZBuilder;
use app\cms\model\Advert as AdvertModel;
use app\cms\model\AdvertType as AdvertTypeModel;
use think\Validate;

/**
 * 广告控制器
 * @package app\cms\admin
 */
class Advert extends Admin
{
    /**
     * 广告列表
     *    
     * @return mixed
     */
    public function index()
    {
        // 查询
        $map = $this->getMap();
        // 排序
        $order = $this->getOrder('id desc');
        // 数据列表
        $data_list = AdvertModel::where($map)->order($order)->paginate();

        $btnType = [
            'class' => 'btn btn-info',
            'title' => '客户列表',
            'icon'  => 'fa fa-fw fa-sitemap',
            'href'  => url('advert_type/index')
        ];

        $list_type = AdvertTypeModel::where('status', 1)->column('id,name');
        array_unshift($list_type, '默认分类');

        // 使用ZBuilder快速创建数据表格
        return ZBuilder::make('table')
            ->setSearch(['title' => '标题']) // 设置搜索框
            ->addColumns([ // 批量添加数据列
                ['id', 'ID'],
                ['name', '用户', 'text.edit'],
                ['city', '期望区域'],
                ['huxing', '期望户型'],
                ['shi', '室'],
                ['ting', '厅'],
                ['wei', '卫'],
                ['louceng', '期望楼层'],
                ['typeid', '租售形式'],
                ['beizhu', '备注'],
                ['phone', '联系电话'],
                ['areasize', '期望面积'],
                ['price', '期望价格'],
                ['status', '状态', 'switch'],
                ['right_button', '操作', 'btn']
            ])

            ->addTopButtons('add,enable,disable,delete') // 批量添加顶部按钮
            ->addTopButton('custom', $btnType) // 添加顶部按钮
            ->addRightButtons(['edit', 'delete' => ['data-tips' => '删除后无法恢复。']]) // 批量添加右侧按钮
            ->addOrder('id,name,typeid,timeset,ad_type,create_time,update_time')
            ->setRowList($data_list) // 设置表格数据
            ->addValidate('Advert', 'name')
            ->fetch(); // 渲染模板
    }

    /**
     * 新增
     *    
     * @return mixed
     */
    public function add()
    {
        // 保存数据
        if ($this->request->isPost()) {
            // 表单数据
            $data = $this->request->post();

            error_log("验证数据".var_export($data,true));

            // 验证
//            $result = $this->validate($data, 'Advert');
//            if (true !== $result) $this->error($result);
//            if ($data['ad_type'] != 0) {
//                $data['link'] == '' && $this->error('链接不能为空');
//                Validate::is($data['link'], 'url') === false && $this->error('链接不是有效的url地址'); // true
//            }

            // 广告类型
            if (!empty($data['huxing'][0])){
                $data['shi']='9';
                $data['ting']='9';
                $data['wei']='9';
            }else{
                unset($data['huxing']);
            }


            if ($advert = AdvertModel::create($data)) {
                // 记录行为
                action_log('advert_add', 'cms_advert', $advert['id'], UID, $data['name']);
                $this->success('新增成功', 'index');
            } else {
                $this->error('新增失败');
            }
        }

//        $list_type = AdvertTypeModel::where('status', 1)->column('id,name');
        $list_type = ['0' => '求租', '1' => '求售'];
        $list_type1 = ['0' => '低层', '1' => '电梯', '2' => '多层', '3' => '均可'];  /*期望楼层*/
        $list_type2 = ['0' => '低层', '1' => '电梯', '2' => '多层', '3' => '均可'];  /*期望楼层*/


        $list_type3 = ['0' => '1', '1' => '2', '2' => '3', '3' => '4'];  /*室*/
        $list_type4 = ['0' => '1', '1' => '2', '2' => '3', '3' => '4'];  /*厅*/
        $list_type5 = ['0' => '1', '1' => '2', '2' => '3', '3' => '4'];  /*卫*/
        // 显示添加页面
        return ZBuilder::make('form')
            ->setPageTips('如果出现无法添加的情况，可能由于浏览器将本页面当成了广告，请尝试关闭浏览器的广告过滤功能再试。', 'warning')
            ->addFormItems([
                ['text', 'name', '客户名称'],
            ])
            ->addLinkages('city', '期望区域', '', 'cms_area_a')
            ->addCheckbox('huxing', '期望户型', '', ['0' => '不限'])
            ->addSelect('shi', '[:请选择室]', '', $list_type3)
            ->addSelect('ting', '[:请选择厅]', '', $list_type4)
            ->addSelect('wei', '[:请选择卫]', '', $list_type5)
            ->addFormItems([
                ['select', 'louceng', '期望楼层', '', $list_type1, 0],
                ['select', 'typeid', '租售形式', '', $list_type, 0],
                ['text', 'beizhu', '备注', '<code>必填</code>'],
                ['text', 'phone', '联系电话', ''],
                ['text', 'areasize', '期望面积', ''],
                ['text', 'price', '期望价格', ''],
                ['radio', 'status', '立即启用', '', ['否', '是'], 1]
            ])
            ->fetch();
    }

    /**
     * 编辑
     * @param null $id 广告id
     *    
     * @return mixed
     */
    public function edit($id = null)
    {
        if ($id === null) $this->error('缺少参数');

        // 保存数据
        if ($this->request->isPost()) {
            // 表单数据
            $data = $this->request->post();
            $time=date("Y-m-d h:m:s");
            $data['add_time']=$time;
            // 验证
//            $result = $this->validate($data, 'Advert');
//            if (true !== $result) $this->error($result);

            if (AdvertModel::update($data)) {
                // 记录行为
                action_log('advert_edit', 'cms_advert', $id, UID, $data['name']);
                $this->success('编辑成功', 'index');
            } else {
                $this->error('编辑失败');
            }
        }

        $list_type = AdvertTypeModel::where('status', 1)->column('id,name');
        array_unshift($list_type, '默认分类');

        $info = AdvertModel::get($id);


        // 显示编辑页面

        $list_type = ['0' => '求租', '1' => '求售'];
        $list_type1 = ['0' => '低层', '1' => '电梯', '2' => '多层', '3' => '均可'];  /*期望楼层*/
        $list_type2 = ['0' => '低层', '1' => '电梯', '2' => '多层', '3' => '均可'];  /*期望楼层*/


        $list_type3 = ['0' => '1', '1' => '2', '2' => '3', '3' => '4'];  /*室*/
        $list_type4 = ['0' => '1', '1' => '2', '2' => '3', '3' => '4'];  /*厅*/
        $list_type5 = ['0' => '1', '1' => '2', '2' => '3', '3' => '4'];  /*卫*/

        return ZBuilder::make('form')
            ->setPageTips('如果出现无法添加的情况，可能由于浏览器将本页面当成了广告，请尝试关闭浏览器的广告过滤功能再试。', 'warning')
            ->addFormItems([
                ['text', 'name', '客户名称'],
            ])
            ->addLinkages('city', '期望区域', '', 'cms_area_a')
            ->addCheckbox('huxing', '期望户型', '', ['0' => '不限'])
            ->addSelect('shi', '[:请选择室]', '', $list_type3)
            ->addSelect('ting', '[:请选择厅]', '', $list_type4)
            ->addSelect('wei', '[:请选择卫]', '', $list_type5)
            ->addFormItems([
                ['hidden', 'id'],
                ['select', 'louceng', '期望楼层', '', $list_type1, 0],
                ['select', 'typeid', '租售形式', '', $list_type, 0],
                ['text', 'beizhu', '备注', '<code>必填</code>'],
                ['text', 'phone', '联系电话', ''],
                ['text', 'areasize', '期望面积', ''],
                ['text', 'price', '期望价格', ''],
                ['radio', 'status', '立即启用', '', ['否', '是'], 1]
            ])
//            ->setTrigger('timeset', '1', 'start_time')
            ->setFormData($info)
            ->fetch();
    }

    /**
     * 删除广告
     * @param array $record 行为日志
     *    
     * @return mixed
     */
    public function delete($record = [])
    {
        return $this->setStatus('delete');
    }

    /**
     * 启用广告
     * @param array $record 行为日志
     *    
     * @return mixed
     */
    public function enable($record = [])
    {
        return $this->setStatus('enable');
    }

    /**
     * 禁用广告
     * @param array $record 行为日志
     *    
     * @return mixed
     */
    public function disable($record = [])
    {
        return $this->setStatus('disable');
    }

    /**
     * 设置广告状态：删除、禁用、启用
     * @param string $type 类型：delete/enable/disable
     * @param array $record
     *    
     * @return mixed
     */
    public function setStatus($type = '', $record = [])
    {
        $ids         = $this->request->isPost() ? input('post.ids/a') : input('param.ids');
        $advert_name = AdvertModel::where('id', 'in', $ids)->column('name');
        return parent::setStatus($type, ['advert_'.$type, 'cms_advert', 0, UID, implode('、', $advert_name)]);
    }

    /**
     * 快速编辑
     * @param array $record 行为日志
     *    
     * @return mixed
     */
    public function quickEdit($record = [])
    {
        $id      = input('post.pk', '');
        $field   = input('post.name', '');
        $value   = input('post.value', '');
        $advert  = AdvertModel::where('id', $id)->value($field);
        $details = '字段(' . $field . ')，原值(' . $advert . ')，新值：(' . $value . ')';
        return parent::quickEdit(['advert_edit', 'cms_advert', $id, UID, $details]);
    }
}