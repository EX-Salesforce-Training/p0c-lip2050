trigger firstTrigger on Contact (before insert, after insert) {
   	List<Contact> cons = new List<Contact>([SELECT Id, MailingStreet, MailingCity 
                             FROM Contact
                            WHERE Id IN:Trigger.new]);
  	List<Account> accList = new List<Account>([SELECT Id, BillingStreet, BillingCity 
                                            FROM Account]);
    List<Contact> updateCons = new List<Contact>();
    
    for(Contact a: cons){
        for(Account n: accList){
       		if (a.AccountId == null){
                if(a.MailingStreet != null && a.MailingStreet == n.BillingStreet || a.MailingCity != null && a.MailingCity == n.BillingCity){
                  a.AccountId = n.Id;
                    updateCons.add(a);
                }        
        	} 
        }
    }
    
    if(updateCons.size() > 0){
        update updateCons;
    }
    
    
        
    

}