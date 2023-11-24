import { LightningElement, wire } from 'lwc';
import getAccount from '@salesforce/apex/SearchAccountInfo.getAccountDetails'

export default class WireFun extends LightningElement {

    error;
    actlist;
    accountName;

    handleOnChangeAccountName (event){
        this.accountName  = event.target.value
    }
    @wire(getAccount,{actName:'$accountName'})
    accountfun({e,data}){
        if(data){
            this.actlist = data
            this.error = 'undefined'
        }else{
            this.actLits = 'undefined'
            this.error = e
        }
    }

}