//
//  ViewController.swift
//  PickerViewAnimation
//
//  Created by babykang on 16/4/5.
//  Copyright © 2016年 babykang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pickerImage = [String]()
    var arrayIndex1 = [Int]()
    var arrayIndex2 = [Int]()
    var arrayIndex3 = [Int]()
    
    var bound :CGRect = CGRect()

    
    @IBOutlet weak var pickerView: UIPickerView!

    @IBOutlet weak var enterButton: UIButton!
    
    @IBOutlet weak var resultLabe: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        pickerImage = ["😎","👿","😺","👽","👰","💁","🐷","🐼","🐹","🐵"]
        
        for _ in 0..<100 {
            arrayIndex1.append((Int)(arc4random()%10))
            arrayIndex2.append((Int)(arc4random()%10))
            arrayIndex3.append((Int)(arc4random()%10))
            
        }
        
        bound = enterButton.bounds
        resultLabe.text = ""
        
        
    }
@IBAction func inter(sender: UIButton) {
    
    pickerView.selectRow(Int(arc4random()) % 99, inComponent: 0, animated: true)
    pickerView.selectRow(Int(arc4random()) % 99, inComponent: 1, animated: true)
    pickerView.selectRow(Int(arc4random()) % 99, inComponent: 2, animated: true)
    
    
    if(arrayIndex1[pickerView.selectedRowInComponent(0)] == arrayIndex2[pickerView.selectedRowInComponent(1)] && arrayIndex2[pickerView.selectedRowInComponent(1)] == arrayIndex3[pickerView.selectedRowInComponent(2)]) {
        
        resultLabe.text = "Bingo!"
        
    } else {
        
        resultLabe.text = "💔"
        
    }
    


    UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.1,initialSpringVelocity: 5, options: .CurveLinear,animations: {
        self.enterButton.bounds = CGRect(x: self.bound.origin.x, y: self.bound.origin.y, width: self.bound.size.width + 20, height: self.bound.size.height)
        }, completion: nil)
    
  }
}
extension ViewController: UIPickerViewDelegate,UIPickerViewDataSource{
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 100
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let imageLabel = UILabel()
        
        if component == 0{
        imageLabel.text = pickerImage[(Int)(arrayIndex1[row])]
        }else if component == 1 {
        imageLabel.text = pickerImage[(Int)(arrayIndex2[row])]
        }else if component == 2{
        imageLabel.text = pickerImage[(Int)(arrayIndex3[row])]
        }
        
        imageLabel.font  = UIFont(name: "Apple Color Emoji", size: 80)
        imageLabel.textAlignment = NSTextAlignment.Center
        return imageLabel
        

    }
    
}

















