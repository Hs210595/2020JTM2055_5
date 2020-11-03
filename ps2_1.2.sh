#!/bin/bash
BEGIN{ votes1=0; votes2=0; votes3=0;votes4=0; FS="\t" }
{
	if($8~"republican")votes1=votes1+$9;
	if($8~"democrat")votes2=votes2+$9;
	if($8~"NA")votes4=votes4+$9;
	
}
END{
     print " Hillary clinton democratic got " votes2;
     print " Trump of republican got" votes1;
     print" other candidate got " votes4;
     total=votes1+votes2+votes4;
     v1=votes1/total;
     v2=votes2/total;
     printf " Donald trumph got %d and hillary clinton got %d percent vote \n  ",v1*100,v2*100; 
}

