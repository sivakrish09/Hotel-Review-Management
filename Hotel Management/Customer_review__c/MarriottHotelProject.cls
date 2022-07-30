public class MarriottHotelProjectHandler
{
	public static void CaseCreation(list<Customer_review__c> reviewList)
	{
		User u = [SELECT id,userName FROM User WHERE UserName = 'sivasubramaniyankrish@mindful-goat-jykgb7.com'];
		list<Case> CaseList = new List<Case> ();
		for(Customer_review__c cusreview : reviewList)
		{
			if(cusreview.Overall_Rating__c < 45)
			{
				case CusRatingCase = new case();
				CusRatingCase.ContactId = cusreview.contact__c;
				CusRatingCase.AccountId = cusreview.Contact__r.Account.Id;
				CusRatingCase.OwnerId = u.id;
				CaseList.add(CusRatingCase);
              
			}	
		}
		insert CaseList;
	}
}