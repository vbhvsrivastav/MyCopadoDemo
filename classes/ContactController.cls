/**
* @File Name : ContactController.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : June 4, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | June 4, 2025 |   | Initial Version
**/

public with sharing class ContactController {
	@AuraEnabled(cacheable=true)
    public static List<Contact> getContactList() {
//Adding this comment to deply using Copado 
        return [SELECT Id, FirstName, LastName, Title, Phone, Email FROM Contact LIMIT 10];
    }
}
