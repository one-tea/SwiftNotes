//: Playground - noun: a place where people can play

import UIKit


struct Matrix{
    
    var data:[[Double]]
    let r:Int
    let c:Int
    
    init(row:Int, col:Int){
        self.r = row
        self.c = col
        data = [[Double]]()
        for _ in 0..<r{
            let aRow = Array(count: col, repeatedValue: 0.0)
            data.append(aRow)
        }
    }
    
    subscript(x: Int, y: Int) -> Double{
        
        get{
            assert( x >= 0 && x < r && y >= 0 && y < c , "Index Out of Range")
            return data[x][y]
        }
        
        set{
            assert( x >= 0 && x < r && y >= 0 && y < c , "Index Out of Range")
            data[x][y] = newValue
        }
    }
    
    // 如果想使用 m[1][1]
    subscript(row: Int) -> [Double]{
        
        get{
            assert( row >= 0 && row < r , "Index Out of Range")
            return data[row]
        }
        
        set(vector){
            assert( vector.count == c , "Column Number does NOT match")
            data[row] = vector
        }
    }
}

var m = Matrix(row: 2, col: 2)
//m[2,2]
m[1,1]


// 如果想使用 m[1][1]
m[1][1]
m[1]

m[0] = [1.5,4.5]
m[0][0]
m[0][1]


// 更多关于assert，留在错误处理进行讲解


// 对于下标的使用
// 实现魔方
// 实现数据结构，如链表
// 实现数据Table，等等等等
