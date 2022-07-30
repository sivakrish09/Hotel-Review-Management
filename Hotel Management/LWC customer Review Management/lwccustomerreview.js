import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import CUSTOMER_OBJECT from '@salesforce/schema/Customer_review__c';
import CONTACT_FIELD from '@salesforce/schema/Customer_review__c.Contact__c';
import ACCOUNT_FIELD from '@salesforce/schema/Customer_review__c.Hotel_Name__c';
import QUESTION1 from '@salesforce/schema/Customer_review__c.How_do_you_rate_our_public_areas_of_our__c';
import QUESTION2 from '@salesforce/schema/Customer_review__c.How_do_you_rate_our_Cleanliness__c'	;
import QUESTION3 from '@salesforce/schema/Customer_review__c.How_do_you_rate_our_Condition_of_rooms__c'	;
import QUESTION4 from '@salesforce/schema/Customer_review__c.How_do_you_rate_our_Housekeeping_service__c'	;
import QUESTION5 from '@salesforce/schema/Customer_review__c.How_do_you_rate_our_Heating_cooling_with__c'	;
import QUESTION6 from '@salesforce/schema/Customer_review__c.How_do_you_rate_our_Quality_of_food__c'	;
import QUESTION7 from '@salesforce/schema/Customer_review__c.How_do_you_rate_our_front_desk_staff__c'	;
import QUESTION8 from '@salesforce/schema/Customer_review__c.How_do_you_rate_our_friendliness_of_the__c'	;
import QUESTION9 from '@salesforce/schema/Customer_review__c.How_do_you_rate_our_Check_In_Process__c'	;
import QUESTION10 from '@salesforce/schema/Customer_review__c.Overall_how_satisfied_were_you_with_our__c'	;

export default class lwccustomerreview  extends LightningElement {
    // Flexipage provides recordId and objectApiName
    

    ObjectName = CUSTOMER_OBJECT;
    ContactField = CONTACT_FIELD;
   
    question1 = QUESTION1;
    question2 = QUESTION2;
    question3 = QUESTION3;
    question4 = QUESTION4;
    question5 = QUESTION5;
    question6 = QUESTION6;
    question7 = QUESTION7;
    question8 = QUESTION8;
    question9 = QUESTION9;
    question10 = QUESTION10;

    HandleForm(event)
    {
      const recordidofreview = event.detail.id;
      this.dispatchEvent(new ShowToastEvent(
        {
          title:'sucess',
          message:'Review form created Successfully  '+ recordidofreview,
          variant: "success",
        }
      ));
      const fieldName = this.template.querySelectorAll('lightning-input-field');
      if(fieldName)
      {
        fieldName.forEach((fields) => {fields.reset();});
      }
    }
    }