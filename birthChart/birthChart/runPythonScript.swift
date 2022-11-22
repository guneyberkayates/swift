//
//  runPythonScript.swift
//  birthChart
//
//  Created by Güney Berkay  on 31.08.2022.
//

import Foundation
import PythonKit

func runPythonScript() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/guneyberkay/Desktop/swift/birthChart/birthChart/")
    let file = Python.import("pythonScript")
    
    let response = file.hello_world()
    print(response)
    return response

}
