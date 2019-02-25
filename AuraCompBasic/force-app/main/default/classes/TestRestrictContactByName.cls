@isTest
private class TestRestrictContactByName {
    @isTest static void testRestrictContactByName(){
        contact cc = new Contact(lastName = 'INVALIDNAME');
        insert cc;
        Database.SaveResult result = Database.insert(cc, false);
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "'+cc.LastName+'" is not allowed for DML',
                             result.getErrors()[0].getMessage());
    }

}