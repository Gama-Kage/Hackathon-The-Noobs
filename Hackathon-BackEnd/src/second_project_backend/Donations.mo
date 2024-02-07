 
import Debug "mo:base/Debug" ;
actor Donations{ 
   stable  var masterWallet = 0 ; //will have the total number of donations 
   var currentAmount = 0 ;
   stable var trackDonor = 1000 ; //stable to make sure that it incerments 
   var lunch = 0 ; 
   public func receiveDonations(amount:Nat){
    masterWallet :=masterWallet+ amount ; //keeps all donations
    currentAmount :=amount; //will help with tracking the current donation  
    trackDonor := trackDonor + 1 ;

   }; 

   public func divideLunch(amount:Nat){ 
    let temp:Nat = currentAmount - amount ; 
    if (temp > 0 ){ 
      lunch := amount ; 
      currentAmount := currentAmount - amount ;  
      

    } else {
      Debug.print("No more bitcoins to donate") ; 
    } ;  
   };//similar code must be followed for all the donations 

  
   public query func donorID(): async Nat { //returns the DTI
      return trackDonor ; 

   } ; 
    
    



}