public class AccountHandler{
    public static Account insertNewAccount(String AccountName){
        Account acct = new Account();
        acct.Name = AccountName;
        try{
            insert acct;
          	return acct;
        }
        catch(DmlException e){
            return null;
        }
     
    
        }
}