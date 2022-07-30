trigger MarriottHotelProject on Customer_review__c (after insert)
{

	if(trigger.isAfter)
	{
		if(trigger.isInsert)
		{
		
			MarriottHotelProjectHandler.CaseCreation(trigger.new)
		}
	}
}