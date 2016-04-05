# UIPickerViewDemo
 
 项目中一些算法，arc4random()
```
for _ in 0..<100 {
            arrayIndex1.append((Int)(arc4random()%10))
            arrayIndex2.append((Int)(arc4random()%10))
            arrayIndex3.append((Int)(arc4random()%10))
      }
            
```
```
    pickerView.selectRow(Int(arc4random()) % 99, inComponent: 0, animated: true)
    pickerView.selectRow(Int(arc4random()) % 99, inComponent: 1, animated: true)
    pickerView.selectRow(Int(arc4random()) % 99, inComponent: 2, animated: true)
```
 关于arc4random()随机取数字
 > 0 ~ X-1
 ```
 intValue = arc4random() % X
 ```
 > 1 ~ X
 ```
  intValue = arc4random() % X + 1
 ```
 
