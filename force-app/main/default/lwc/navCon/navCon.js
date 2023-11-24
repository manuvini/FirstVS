import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation'

export default class NavCon extends NavigationMixin(LightningElement) {

    openAccountTheme(){
        this[NavigationMixin.Navigate]({
            type: "standard__objectPage",
            attributes: {
                objectApiName: "Contact",
                actionName: 'new'
            }
        });
    }

}