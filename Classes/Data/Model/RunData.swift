//
//  RunData.swift
//  JeckyMenu
//
//  Created by Jecky on 14-10-2.
//  Copyright (c) 2014年 njut. All rights reserved.
//

import UIKit

class RunData: NSObject{
    var orderId:NSString!
    var mileage:CGFloat!
    var totalTime:NSInteger!
    var calorie:CGFloat!

    var points:NSMutableArray!
    var pointsPerKm:NSMutableArray!
    var paceArray:NSMutableArray!
    
    var northEastPoint:CLLocationCoordinate2D!
    var southWestPoint:CLLocationCoordinate2D!
    
    var startPoint:CLLocationCoordinate2D!
    var endPoint:CLLocationCoordinate2D!
    
//    required init(coder aDecoder: NSCoder)
//    {
//        super.init()
//                
//        self.orderId = aDecoder.decodeObjectForKey("orderId") as NSString
//        
//        var m = aDecoder.decodeFloatForKey("mileage") as Float
//        self.mileage = CGFloat(m)
//
//        self.totalTime = aDecoder.decodeIntegerForKey("totalTime") as NSInteger
//        var c = aDecoder.decodeFloatForKey("calorie") as Float
//        self.calorie = CGFloat(c)
//        
//        var pointData = aDecoder.decodeObjectForKey("points") as NSData
//        self.points = NSKeyedUnarchiver.unarchiveObjectWithData(pointData) as NSMutableArray
//        
//        var ppkData = aDecoder.decodeObjectForKey("pointsPerKm") as NSData
//        self.pointsPerKm = NSKeyedUnarchiver.unarchiveObjectWithData(ppkData) as NSMutableArray
//        
//        var paceData = aDecoder.decodeObjectForKey("paceArray") as NSData
//        self.paceArray = NSKeyedUnarchiver.unarchiveObjectWithData(paceData) as NSMutableArray
//        
//        var nePoint = aDecoder.decodeObjectForKey("northEastPoint") as NSData
//        self.northEastPoint = NSKeyedUnarchiver.unarchiveObjectWithData(nePoint) as CLLocation
//        
//        var swPoint = aDecoder.decodeObjectForKey("southWestPoint") as NSData
//        self.southWestPoint = NSKeyedUnarchiver.unarchiveObjectWithData(swPoint) as CLLocation
//        
//        var stPoint = aDecoder.decodeObjectForKey("startPoint") as NSData
//        self.startPoint = NSKeyedUnarchiver.unarchiveObjectWithData(stPoint) as CLLocation
//        
//        var edPoint = aDecoder.decodeObjectForKey("endPoint") as NSData
//        self.endPoint = NSKeyedUnarchiver.unarchiveObjectWithData(edPoint) as CLLocation
//
//    }
//    
//    func encodeWithCoder(aCoder: NSCoder){
//        aCoder.encodeObject(orderId, forKey: "orderId")
//        aCoder.encodeFloat(Float(mileage), forKey: "mileage")
//        aCoder.encodeInteger(totalTime, forKey: "totalTime")
//        aCoder.encodeFloat(Float(calorie), forKey: "calorie")
//        aCoder.encodeObject(NSKeyedArchiver.archivedDataWithRootObject(points), forKey: "points")
//        aCoder.encodeObject(NSKeyedArchiver.archivedDataWithRootObject(pointsPerKm), forKey: "pointsPerKm")
//        aCoder.encodeObject(NSKeyedArchiver.archivedDataWithRootObject(paceArray), forKey: "paceArray")
//
//        aCoder.encodeObject(NSKeyedArchiver.archivedDataWithRootObject(northEastPoint), forKey: "northEastPoint")
//        aCoder.encodeObject(NSKeyedArchiver.archivedDataWithRootObject(southWestPoint), forKey: "southWestPoint")
//        aCoder.encodeObject(NSKeyedArchiver.archivedDataWithRootObject(startPoint), forKey: "startPoint")
//        aCoder.encodeObject(NSKeyedArchiver.archivedDataWithRootObject(endPoint), forKey: "endPoint")
//
//    }

}
