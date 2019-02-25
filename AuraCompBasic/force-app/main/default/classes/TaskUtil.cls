public class TaskUtil {
    public static string getTaskPriority(string leadstate){
        
        if (String.isBlank(leadstate) || Leadstate.length() > 2 ){
            return null;
        }    
    	String taskPriority;
        
        if (LeadState=='CA')
        {
            taskpriority = 'HIGH';
        }  else
        {
    		taskpriority = 'NORMAL';
   		 }
    		return taskpriority;
}
}