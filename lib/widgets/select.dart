import 'package:flutter/material.dart';

class CitySelectorDemo extends StatefulWidget {
  @override
  _CitySelectorDemoState createState() => _CitySelectorDemoState();
}

class _CitySelectorDemoState extends State<CitySelectorDemo> {
  // 用来保存当前选中的城市
  String _selectedCity = '';
  // 用来标识是否需要显示错误状态
  bool _validate = false;

  // 提交时的逻辑：若未选择城市则报错，否则执行提交操作
  void _onSubmit() {
    setState(() {
      _validate = _selectedCity.isEmpty;
    });
    if (!_validate) {
      // TODO: 在此处执行真正的提交逻辑
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('提交成功，选择的城市为 $_selectedCity')),
      );
    }
  }

  // 显示城市选择的底部弹窗
  Future<void> _showCityPicker() async {
    // 这里仅示例三个城市，可自行替换为实际数据
    final List<String> cities = ['北京', '上海', '广州'];

    String? result = await showModalBottomSheet<String>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          child: Column(
            children: [
              SizedBox(height: 16),
              Text(
                '请选择城市',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemCount: cities.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(cities[index]),
                      onTap: () {
                        Navigator.pop(context, cities[index]);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );

    // 当用户从底部弹窗选中某个城市时，更新状态
    if (result != null) {
      setState(() {
        _selectedCity = result;
        // 只要有选中，就将验证错误标记清除
        _validate = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // 根据是否需要显示错误，动态设置边框颜色
    final borderColor = _validate ? Colors.red : Colors.grey;

    return Scaffold(
      appBar: AppBar(title: Text('城市选择示例')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // 展示“城市”标签 + 选择区域
            Row(
              children: [
                Text(
                  '城市',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: InkWell(
                    onTap: _showCityPicker,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                      decoration: BoxDecoration(
                        border: Border.all(color: borderColor),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _selectedCity.isEmpty ? '选择城市' : _selectedCity,
                            style: TextStyle(
                              color: _selectedCity.isEmpty
                                  ? Colors.grey
                                  : Colors.black,
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios,
                              size: 16, color: Colors.grey),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // 若需要显示错误提示，就在这里展示“不能为空”
            if (_validate)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  '不能为空',
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
              ),
            Spacer(),
            // 提交按钮
            ElevatedButton(
              onPressed: _onSubmit,
              child: Text('提交'),
            ),
          ],
        ),
      ),
    );
  }
}
