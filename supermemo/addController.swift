//
//  addController.swift
//  supermemo
//
//  Created by 小泉大夢 on 2018/10/23.
//  Copyright © 2018 小泉大夢. All rights reserved.
//
import UIKit

class addController: UITableViewController{
    
    
    
    
    //delete
    @IBOutlet weak var table: UITableView!
    override func tableView(_ tableView: UITableView,commit editingStyle:UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {if editingStyle == .delete {Todokobetunonakami.remove(at: indexPath.row);tableView.deleteRows(at:[indexPath],with: .fade)
        
            
        }
        
    }

   
    
    
    
    
   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //戻り値の設定(表示するcell数)
        return Todokobetunonakami.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルのオブジェクトを作成します。
        // "NameCell" の部分はStoryboardでセルに設定したIdentifierを指定しています。
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        
        // namesから該当する行の文字列を取得してセルに設定します。
        // indexPath.rowで何行目かわかります。
        cell.textLabel?.text = Todokobetunonakami[indexPath.row]
        return cell
        
        
    }
        
    
    //UITableView、cellForRowAtの追加(表示するcellの中身を決める)
        /*override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //変数を作る
        let TodoCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        //変数の中身を作る
        TodoCell.textLabel!.text = Todokobetunonakami[indexPath.row]
        //戻り値の設定（表示する中身)
        return TodoCell
 }*/
        
     @IBAction func unwindToFirstView(segue:UIStoryboardSegue){
        
    }
    
    
    //必要
    //最初からあるコード
    /*override func viewDidLoad() {
        super.viewDidLoad()
        //追加画面で入力した内容を取得する
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            Todokobetunonakami = UserDefaults.standard.object(forKey: "TodoList") as! [String]
        }
 }*/
    
    
   /* override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            Todokobetunonakami = UserDefaults.standard.object(forKey: "TodoList") as! [String]
        }
        }
   */
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        loadView()
        viewDidLoad()
//        super.viewDidDisappear(animated)
//        if UserDefaults.standard.object(forKey: "TodoList") != nil {
//            Todokobetunonakami = UserDefaults.standard.object(forKey: "TodoList") as! [String]
//
        
//        }
    }
    
    
   
    
    }


    
    
    /*
    func tableView(_ tableView: UITableView, number0fRowsInSection section: Int) -> Int{
    return Todokobetunonakami.count
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            Todokobetunonakami = UserDefaults.standard.object(forKey: "TodoList") as! [String]
        }
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
   
    @IBAction func unwindToFirstView(segue:UIStoryboardSegue){
        
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let TodoCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)

        // Configure the cell...
        TodoCell.textLabel!.text = Todokobetunonakami[indexPath.row]
        //戻り値の設定（表示する中身)
        return TodoCell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
 
 */


 



