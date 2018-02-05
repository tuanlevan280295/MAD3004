//
//  Customer.swift
//  MY.Project
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
//customer lass

class Customer {
    var customerName:String
    var address: String
    var email:String
    var creditCardInfo:String
    var shippingInfo:String
    
    init(customerName:String, address:String, email:String, creditCardInfo:String, shippingInfo:String){
        self.customerName = customerName
        self.address = address
        self.email = email
        self.creditCardInfo = creditCardInfo
        self.shippingInfo = shippingInfo
    }
    }
//Shipping Cart Here
class ShippingCart:Customer{
    var cartld: Int?
    var productID: Int?
    var quality: Int?
    var dateAdded: Int?
    
    init(customerName: String, address: String, email: String, creditCardInfo: String, shippingInfo: String, cartld: Int, productID: Int, quality: Int, dateAdded: Int){
        //super.init(customerName: customerName, address: address, email: email, creditCardInfo: creditCardInfo, shippingInfo: shippingInfo)
        super.init(customerName: customerName, address: address, email: email, creditCardInfo: creditCardInfo, shippingInfo: shippingInfo)
        self.cartld = cartld
        self.productID = productID
        self.quality = quality
        self.dateAdded = dateAdded
        
}
    
    func addCartitem(){
    }
    func updateQuality(){
        
    }
    func viewCartDetail(){
        
    }
    func checkOut(){
    }
    }
//ORDER from CUSTOMER

class Order:Customer{
    var orderld:Int
    var dateCreated:String
    var dateShipped:String
    var customerID:String
    var status: String
    var shippingld:String
    init(customerName: String, address: String, email: String, creditCardInfo: String, shippingInfo: String, orderld: Int, dateCreated: String, dateShipped: String, customerID: String, status: String, shippingld: String) {
        self.orderld = orderld
        self.dateCreated = dateCreated
        self.dateShipped = dateShipped
        self.customerID = customerID
        self.status = status
        self.shippingld = shippingld
        super.init(customerName: customerName, address: address, email: email, creditCardInfo: creditCardInfo, shippingInfo: shippingInfo)
    }
    func placeOrder(){
    }
    }
//Shipping Info from ORDER
class ShippingInfo:Order{
    var shippingId: Int
    var shippingType: String
    var shippingCost: Int
    var shippingRegionID: Int
    
    init(orderld: Int, dateCreated: String, dateShipped: String, customerID: String, status: String, shippingld: String, shippingId: Int, shippingType: String, shippingCost: Int, shippingRegionID: Int, customerName: String, address: String, email: String, creditCardInfo: String, shippingInfo: String)
    {
    self.shippingId = shippingId
    self.shippingType = shippingType
    self.shippingCost = shippingCost
    self.shippingRegionID = shippingRegionID
        
    super.init(customerName: customerName, address: address, email: email, creditCardInfo: creditCardInfo, shippingInfo: shippingInfo, orderld: orderld, dateCreated: dateShipped, dateShipped: dateShipped, customerID: customerID, status: status, shippingld: shippingld)
}
    func updateShippingInfo(){
    }
}
//Order Details from ORDER
class OrderDetails:Order{
    var productID: Int
    var productName: String
    var quality: Int
    var unitCost: float_t
    var subtotal: float_t
    
    init(customerName: String, address: String, email: String, creditCardInfo: String, shippingInfo: String, orderld: Int, dateCreated: String, dateShipped: String, customerID: String, status: String, shippingld: String, productID: Int, productName: String, quality: Int, unitCost: float_t, subtotal: float_t){
        self.productID = productID
        self.productName = productName
        self.quality = quality
        self.unitCost = unitCost
        self.subtotal = subtotal
        super.init(customerName: customerName, address: address, email: email, creditCardInfo: creditCardInfo, shippingInfo: shippingInfo, orderld: orderld, dateCreated: dateShipped, dateShipped: dateShipped, customerID: customerID, status: status, shippingld: shippingld)
    }
    func calPrice(){
}
}
//class USERs
class User{
    var userld:String
    var password: String
    var loginStatus: String
    init(userld: String, password: String, loginStatus: String){
    self.userld = userld
    self.password = password
    self.loginStatus = loginStatus
}
    func  verifyLogin(User:User) -> Bool {
        return (password > User.password)
    }
}
//Administrator from USERs
class Administrator:User{
    var adminName:String?
    var email: String?
    
    init(adminName: String, email: String, userld: String, password: String, loginStatus: String){
    self.adminName = adminName
    self.email = email
        super.init(userld: userld, password: password, loginStatus: loginStatus)
}
    func UpdateCatalog(User:User) -> Bool {
        return (password >  User.password)
    }
}

////// DAY 666666 (FINISH RIGHT HERE).(Just create table)





