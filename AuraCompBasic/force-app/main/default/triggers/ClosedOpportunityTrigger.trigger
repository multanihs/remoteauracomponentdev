trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) 
{
	List<Task> TaskListToInsert = new List<Task>();
        for (opportunity o: Trigger.new)
    {
            if(o.StageName =='Closed Won')
            {
                Task t = new Task();
                t.Subject = 'Follow Up Test Task';
                t.WhatId = o.ID;
                tasklisttoinsert.add(t);
            }
        }
    if( tasklisttoinsert.size() > 0){
    insert tasklisttoinsert;
}
}