public class opportunityHandler 
{
	public static void amountCheck(list<opportunity> newOppList)
	{
        opportunity newOpp = new opportunity();
        list<opportunity> newOppCollection = new list<opportunity>();
		for(opportunity opp : newOppList)
		{
			if(opp.Amount >= 50000)
			{
                system.debug('newly inserted amount'+opp.Amount);
				opp.Amount = (opp.Amount/2);
                system.debug('after inserted amount'+opp.Amount);
     			newOpp.AccountId   = opp.AccountId;
                newOpp.Amount      = opp.Amount;
                newOpp.CloseDate   = opp.CloseDate;
                newOpp.ContactId   = opp.ContactId;
                newOpp.Type		   = opp.Type;
                newOpp.LeadSource  = opp.LeadSource;
                newOpp.Probability = opp.Probability;
                newOpp.Name		   = opp.Name+' copied';
                newOpp.StageName   = opp.StageName;
                newOpp.Description = 'This record is automatically created using trigger';
                system.debug('new opp inserted amount'+newOpp.Amount);
                newOppCollection.add(newOpp);
			}
		}
        insert newOppCollection;
	} 
}