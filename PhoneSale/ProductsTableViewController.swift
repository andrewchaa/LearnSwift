//
//  ProductsTableViewController.swift
//  PhoneSale
//
//  Created by Andrew Chaa on 26/04/2016.
//  Copyright © 2016 Andrew Chaa. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    var products : [Product]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let product1 = Product()
        product1.name = "1907 Wall Set"
        product1.cellImage = "image-cell1"
        product1.productImage = "phone-fullscreen1"
        
        let product2 = Product()
        product2.name = "1921 Dial Phone"
        product2.cellImage = "image-cell2"
        product2.productImage = "phone-fullscreen2"

        let product3 = Product()
        product3.name = "1937 Desk Set"
        product3.cellImage = "image-cell3"
        product3.productImage = "phone-fullscreen3"
        
        let product4 = Product()
        product4.name = "1984 Motorola Portable"
        product4.cellImage = "image-cell4"
        product4.productImage = "phone-fullscreen4"
        
        products = [product1, product2, product3, product4]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let pNames = products {
            return pNames.count
        }
        
        return 0
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)

        if let product = products?[indexPath.row] {
            cell.textLabel?.text = product.name
            if let i = product.cellImage {
                cell.imageView?.image = UIImage(named: i)
            }
            
        }

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "ShowProduct") {
            guard
                let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPathForCell(cell) else {
                    return
                }

            let productVc = segue.destinationViewController as? ProductViewController
            productVc?.product = products?[indexPath.row]
        }
    }

}
