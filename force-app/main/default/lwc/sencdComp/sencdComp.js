import { LightningElement } from 'lwc';

export default class SencdComp extends LightningElement {

    name  = 'Manoj'
    isActive  = false

    handleNameChange = (e) => {
       this.name  = e.target.value;
    } 
    
    handleCheckChange = (e) => {
      myMethod()
       this.isActive  = e.target.checked;
    }


}