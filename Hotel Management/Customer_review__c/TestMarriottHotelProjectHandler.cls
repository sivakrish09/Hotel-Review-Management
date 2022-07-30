@isTest
public class TestMarriottHotelProjectHandler
{
    @isTest
    public static void TestingFunctionName()
    {
    /* Creating Contact record */    
    Contact c = new contact();
    c.LastName = 'siva';
    c.Phone = '123456789455';
    insert c;
    Contact c1 = new contact();
    c1.LastName = 'siva';
    c1.Phone = '123456789455';
    insert c1;
    
	/* Creating customer review form record */  
        
    Customer_review__c cr = new Customer_review__c();
    cr.Contact__c =c.id;
    cr.How_do_you_rate_our_public_areas_of_our__c = 'Bad';
    cr.How_do_you_rate_our_Cleanliness__c = 'Bad';
    cr.How_do_you_rate_our_Condition_of_rooms__c = 'Bad';
    cr.How_do_you_rate_our_Housekeeping_service__c = 'Good';
    cr.How_do_you_rate_our_Heating_cooling_with__c = 'Bad';
    cr.How_do_you_rate_our_Quality_of_food__c = 'Good';
    cr.How_do_you_rate_our_front_desk_staff__c = 'Bad';
    cr.How_do_you_rate_our_friendliness_of_the__c = 'Bad';
    cr.How_do_you_rate_our_Check_In_Process__c = 'Bad';
    cr.Overall_how_satisfied_were_you_with_our__c = 'Bad';    
    insert cr;
    
    Customer_review__c crr = new Customer_review__c();
    crr.Contact__c =c1.id;
    crr.How_do_you_rate_our_public_areas_of_our__c = 'Good';
    crr.How_do_you_rate_our_Cleanliness__c = 'Good';
    crr.How_do_you_rate_our_Condition_of_rooms__c = 'Good';
    crr.How_do_you_rate_our_Housekeeping_service__c = 'Good';
    crr.How_do_you_rate_our_Heating_cooling_with__c = 'Good';
    crr.How_do_you_rate_our_Quality_of_food__c = 'Good';
    crr.How_do_you_rate_our_front_desk_staff__c = 'Good';
    crr.How_do_you_rate_our_friendliness_of_the__c = 'Good';
    crr.How_do_you_rate_our_Check_In_Process__c = 'Good';
    crr.Overall_how_satisfied_were_you_with_our__c = 'Good';    
    insert crr;
 	/* checking whether case is created for Contact */  
    case ca = new case();
    ca=[SELECT Id, ContactId FROM Case WHERE ContactId =: c.id ];
    system.assertEquals(c.id, ca.ContactId);
   
    list<case> caa = [SELECT Id, ContactId FROM Case];
    for(case caseloop : caa)
        {
			system.assertNotEquals(c1.id, caseloop.ContactId);
        }
          
    }
}

