import { LightningElement, api } from 'lwc';


const columns  = [
    {label: 'Account Id ', fieldName: 'id'},
    {label: 'Account Name', fieldName: 'name'}
] 

export default class Accountsearchresults extends LightningElement {


    test = null;

    columns = columns
    @api searchdetails = []
}
