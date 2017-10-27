function persistence(){

  param(                          #do not allow null or empty values
    [ValidateNotNullOrEmpty()]
    [string]
    $n = 39,
     
    
    [int]$script:count =0,
    $script:chars
  )

  Begin{
  
    $Stringlenght = $n.length
    
  }

  Process{
  
    if ($Stringlenght -eq 1){                        # CHECK - if two or less chars in string 
        
      write-host " your string is only one char"
      break
    
    }elseif($Stringlenght -gt 1){                    # CHECK - if more than more char in string populate charArray
       
      $chars = $n.ToCharArray()                      # POPULATE CHAR ARRAY - if more than more char in string populate charArray
    
    
    }
  }
    
  End{
                                                    
   
      performMath $chars 
    
    
    }
 
  }
  




function performMath(){
  param(
  
  $script:chars,
   [int]$count = 0
  )
   
  Begin{ # populate charArray
  
    
    $acculatmativeTotal = 0
    $charlenght = $chars.count
  }
  Process{
  
    $count ++
            
    for($i=0;$i -lt $charlenght ;$i++){
    
      if ($i -eq 0){
    
        $acculatmativeTotal = [convert]::ToInt32($chars[$i])
    
      }
    
      elseif ($i -ne $charlenght ){
      
        $acculatmativeTotal =  $acculatmativeTotal * [convert]::ToInt32($chars[$i])
      }
     
    }
    
  }

  end{

    if ($acculatmativeTotal.lenght -gt 2){
      performMath ($acculatmativeTotal, $($count = $count +1) )
    
    }    return $acculatmativeTotal, $count 
    
    }
    
  }

persistence 39 

