import Foundation
import KaitaiStream

// 0123\n4567\n
let ks = KaitaiStream(path:"/Users/mothlike/Downloads/test.txt")!

ks.readBytes(3)
ks.position
ks.isEOF
ks.readU1()
ks.position
ks.isEOF
ks.seek(1)
ks.readS1()

ks.seek(0)
String(kaitaiStream: ks, encoding: NSUTF8StringEncoding)
ks.seek(0)
String(kaitaiStream: ks, length: 4, encoding: NSUTF8StringEncoding)
ks.seek(0)
let a = String(kaitaiStream: ks, termination: 10, encoding: NSUTF8StringEncoding)
a?.kaitaiStream