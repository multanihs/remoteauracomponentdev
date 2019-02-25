trigger ExampleTrigger on Contact (after insert, after delete) {
    if(Trigger.isInsert){
        Integer recordcount = Trigger.new.size();
        EmailManager.sendMail('harbinder_multani@persistent.com', 'test trigger', recordcount +'contacts wer intserted');
    }else if (trigger.isdelete){
        
    }
}