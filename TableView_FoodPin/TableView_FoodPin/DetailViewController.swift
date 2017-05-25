//
//  DetailViewController.swift
//  TableView_FoodPin
//
//  Created by LeoKao on 2017/5/24.
//  Copyright © 2017年 LeoKao. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var detailImageView: UIImageView!
    var myImageView:String = ""
    var myRestaurantName:String = ""
    var myRestaurantType:String = ""
    var myRestaurantLocation:String = ""
    var myRestaurantIsVisited:Bool = false

    @IBOutlet weak var detailTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailImageView.image = UIImage(named : myImageView)
        
//        detailTableView.backgroundColor = UIColor(red: 0.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.2)
//        detailTableView.tableFooterView = UIView(frame: CGRect.zero)
//        detailTableView.separatorColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as? DetailTableViewCell{
            
            cell.backgroundColor = UIColor.clear
            
            switch indexPath.row {
            case 0:
                cell.restaurantField.text = "Name"
                cell.restaurantValue.text = myRestaurantName
            case 1:
                cell.restaurantField.text = "Type"
                cell.restaurantValue.text = myRestaurantType
            case 2:
                cell.restaurantField.text = "Location"
                cell.restaurantValue.text = myRestaurantLocation
            case 3:
                cell.restaurantField.text = "Been here"
                if myRestaurantIsVisited {
                    cell.restaurantValue.text = "Yes"
                }else{
                    cell.restaurantValue.text = "No"
                }
            default:
                cell.restaurantField.text = ""
                cell.restaurantValue.text = ""
            }
            return cell
        }else{
            let cell = TableViewCell()
            return cell
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
