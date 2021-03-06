// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cellGroup(childType) constructor { 
   tempOrdered = ds_priority_create();
   ordered = ds_list_create();
      with(childType){ 
         ds_priority_add(other.tempOrdered, id, x + y * 1000000);
      }
	 while(ds_priority_size(tempOrdered) > 0){
		ds_list_add(ordered, ds_priority_delete_min(tempOrdered));
	 }
		for(var i=0; i < ds_list_size(ordered); i++){
		   ordered[| i].orderIndex = i;
		}
	 ds_priority_destroy(tempOrdered);
	 
   function cleanUp(){
	ds_list_destroy(ordered);
   }

}

function Delegate() constructor { 
   handlers = ds_list_create(); 
   
   Invoke = function(args){ 
      for(var i = 0; i < ds_list_size(handlers); i++){
		ds_list_find_value(handlers, i)(args);
      }
   }

   AddListener= function(listener){
       ds_list_add(handlers, listener);
   }
}


