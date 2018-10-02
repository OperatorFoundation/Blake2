import Blake2_ObjC

public func blake2Hash(input:Data, key:Data, outputlen: Int) -> Data
{
    var output: Data = Data(count: outputlen)
    input.withUnsafeBytes
    {
        (inputPtr: UnsafePointer<Int8>) -> Void in
        
        key.withUnsafeBytes
        {
            (keyPtr: UnsafePointer<Int8>) -> Void in
            
            output.withUnsafeMutableBytes
            {
                (outputPtr: UnsafeMutablePointer<Int8>) -> Void in
                
                Blake2s.hash(outputPtr, outlen: outputlen, input: inputPtr, inlen: key.count, key: keyPtr, keylen: key.count)
            }
        }
    }
    
    return output
}
