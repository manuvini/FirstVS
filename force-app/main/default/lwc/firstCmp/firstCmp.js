import { LightningElement } from 'lwc';

export default class FirstCmp extends LightningElement {
     name  = 'Manoj'
     isActive  = false

     handleNameChange = (e) => {
        this.name  = e.target.value;
     } 
     
     handleCheckChange = (e) => {
        this.isActive  = e.target.checked;
     }


    
}