//
//  ViewController.swift
//  PickerViewAnimation
//
//  Created by babykang on 16/4/5.
//  Copyright © 2016年 babykang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pickerData : [[String]] = [[String]]()

    @IBOutlet weak var pickerView: UIPickerView!

    @IBOutlet weak var enterButton: UIButton!
    
    @IBOutlet weak var resultLabe: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerData = [["😅","😎","💀","💩","🐭"],
                      ["😅","😎","💀","💩","🐭"],
                      ["😅","😎","💀","💩","🐭"]]
    }
@IBAction func inter(sender: UIButton) {
  }
}
extension ViewController: UIPickerViewDelegate,UIPickerViewDataSource{
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[component][(row)]
    }
    
}

















