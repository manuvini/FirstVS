import { LightningElement } from 'lwc';

export default class Childlifecycle extends LightningElement {



    constructor(){
        super()
        console.log('Child Constructor is called');
    }

    connectedCallback(){
        console.log('Child Connected callback is called');
    }

    renderedCallback(){
        console.log('Child Rerender is called');
    }

    disconnectedCallback(){
        console.log('Child Disconnected is called');
    }

    errorCallback(){
        console.log('Child Error Callback');
    }
}