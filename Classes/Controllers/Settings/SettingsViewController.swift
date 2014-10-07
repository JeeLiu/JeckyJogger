//
//  SettingsViewController.swift
//  JeckyJogger
//
//  Created by Jecky on 14-10-2.
//  Copyright (c) 2014年 Jecky. All rights reserved.
//

import UIKit

class SettingsViewController: BaseViewController, UITableViewDelegate,UITableViewDataSource {

    var tableView:UITableView?
    let SettingsCell:String = "SettingsCell"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.        
        self.navigationItem.title = "Settings"
        
        var button = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        button.frame = CGRectMake(0, 0, 44, 44)
        button.setBackgroundImage(UIImage(named: "bg_menu_nor"), forState: UIControlState.Normal)
        button.setBackgroundImage(UIImage(named: "bg_menu_act"), forState: UIControlState.Selected)
        button.setBackgroundImage(UIImage(named: "bg_menu_act"), forState: UIControlState.Highlighted)
        button.addTarget(self, action: "back", forControlEvents: UIControlEvents.TouchUpInside)
        var buttonItem = UIBarButtonItem(customView: button) as UIBarButtonItem
        self.navigationItem.leftBarButtonItem = buttonItem
        
        tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.Plain)
        tableView!.dataSource = self
        tableView!.delegate = self
        tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier:SettingsCell)
        self.view.addSubview(tableView!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func back(){
        self.sideMenuViewController.presentLeftMenuViewController()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell = tableView.dequeueReusableCellWithIdentifier(SettingsCell) as? UITableViewCell
        cell?.textLabel?.text = "离线地图"
        return cell!
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        return 54.0
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        tableView.deselectRowAtIndexPath(indexPath, animated:true)
        var controller:OfflineMapViewController = OfflineMapViewController()
        self.navigationController!.pushViewController(controller, animated: true)
    }

}
