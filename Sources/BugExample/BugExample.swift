// import CxxModule
import CModule
import SwiftUI

public enum Example
{  
  public static func doSomething() -> Void
  {
    // var cxx = CxxModule()

    // cxx.doSomething()
    
    var c = CModule(id: 42, doSomething: 
    { 
      CModuleDoSomething($0)
    })

    c.doSomething(&c)
  }
}
