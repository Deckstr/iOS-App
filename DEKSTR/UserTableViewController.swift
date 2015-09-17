//
//  UserTableViewController.swift
//
//
//  Created by Monte's Pro 13" on 9/13/15.
//
//

import UIKit
import Parse

class UserTableViewController: UITableViewController {
    
    //MARK: Properties
    var users = [User]()
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testObject = PFObject(className: "TestObject")
        testObject["foo"] = "bar"
        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            print("Object has been saved.")
        }
        
        //Load the sample Data
        loadSampleUsers()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
    }
    
    func loadSampleUsers() {
        let photo1 = UIImage(named: "MaleUserImage")!
        let user1 = User(username: "Monte Thakkar", title: "iOS Developer", photo: photo1)!
        
        let photo2 = UIImage(named: "FemaleUserImage")!
        let user2 = User(username: "Arabelle Clitandre", title: "Graphic Designer", photo: photo2)!
        
        let photo3 = UIImage(named: "FemaleUserImage")!
        let user3 = User(username: "Sade Stevens", title: "Web Development", photo: photo3)!
        
        let photo4 = UIImage(named: "MaleUserImage")!
        let user4 = User(username: "Peter Law", title: "Mechanical Engineer", photo: photo4)!
        
        let photo5 = UIImage(named: "FemaleUserImage")!
        let user5 = User(username: "Johanna Perkins", title: "Accountant", photo: photo5)!
        
        users += [user1, user2, user3, user4, user5]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        print(users.count)
        return users.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //Table view cells are reused and should be dequed using a cell identifier
        let cellIdentifier = "UserTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! UserTableViewCell
        
        //Fetches the approriate user for the data source layout
        let user = users[indexPath.row]
        
        cell.usernameLabel.text = user.username
        cell.titleLabel.text = user.title
        cell.photoImageView.image = user.photo
        
        return cell
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the specified item to be editable.
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
    // Return NO if you do not want the item to be re-orderable.
    return true
    }
    */
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
}
