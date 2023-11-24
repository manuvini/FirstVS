import { LightningElement } from 'lwc';
import getAccount from '@salesforce/apex/SearchAccountInfo.getAccountDetails'
import { myMethod} from './myCommon';

export default class Accsearch extends LightningElement {

    accountName;
    accountPhone;
    billingState;
    billingStreet;
    billingCity;
    billingZipcode;

    onChangeAccountName = (e) => {
        this.accountName = e.target.value;
      //  alert(e.target.value)
    }
    onChangeAccountPhone = (e) => {
        this.accountPhone = e.target.value;
      //  alert(e.target.value)
    }
    onChangebillingStreet = (e) => {
        this.billingStreet = e.target.value;
       // alert(e.target.value)
    }
    onChangebillingCity = (e) => {
        this.billingCity = e.target.value;
       // alert(e.target.value)
    }
    onChangebillingState = (e) => {
        this.billingState = e.target.value;
        //alert(e.target.value)
    }
    onChangebillingZipcode = (e) => {
        this.billingZipcode = e.target.value;
     //   alert(e.target.value)
    }

    handleSearch = () => {
        myMethod();
        alert('Hi sir i was called ' + this.accountName)
        getAccount({actName:this.accountName })
        .then((res) => {
           this.dispatchEvent(new CustomEvent('getaccountdata',{detail:res}))
        }).catch((error) => {
            console.log(error)
        })
    }

}