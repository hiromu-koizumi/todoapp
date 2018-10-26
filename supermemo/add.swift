//
//  add.swift
//  supermemo
//
//  Created by 小泉大夢 on 2018/10/23.
//  Copyright © 2018 小泉大夢. All rights reserved.
//

import UIKit

var Todokobetunonakami = [String]()

class add: UIViewController{
    
    

    @IBOutlet weak var textyField: UITextField!
    
    
    
    
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func addbutton(_ sender: Any) {
       Todokobetunonakami.append(textyField.text!)
        textyField.text = ""
        UserDefaults.standard.set(Todokobetunonakami, forKey: "TodoList")
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
