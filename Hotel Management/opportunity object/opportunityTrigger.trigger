trigger opportunityTrigger on Opportunity (before insert)
{
	if(trigger.isBefore)
	{
		if(trigger.isInsert)
		{
			opportunityHandler.amountCheck(trigger.new);
		}
	}
}