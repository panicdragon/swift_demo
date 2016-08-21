//: Playground - noun: a place where people can play

import UIKit

struct Blog {
    var name = "web帳"
    var url:String = "http://www.webcyou.com/"
}

// 初期値ありの場合。
var blog = Blog()
print(blog.url) // "http://www.webcyou.com/\n"


// 構造体(値型)
struct BlogStruct {
    var name:String
}

// クラス(参照型)
class BlogClass {
    var name:String
    
    init(name:String){
        self.name = name
    }
}

var blogStruct1 = BlogStruct(name: "web帳")
var blogStruct2 = blogStruct1
blogStruct1.name = "はてなblog"
print("blogStruct1：\(blogStruct1.name)、blogStruct2：\(blogStruct2.name)")


var blogClass1 = BlogClass(name: "web帳")
var blogClass2 = blogClass1
blogClass2.name = "はてなblog"
print("blogClass1：\(blogClass1.name)、blogClass2：\(blogClass2.name)")