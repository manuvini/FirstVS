import { LightningElement } from 'lwc';

export default class Parentlifecycle extends LightningElement {



    constructor(){
        super()
        console.log('Parent Constructor is called');
    }

    connectedCallback(){
        console.log('Parent Connected callback is called');
    }

    renderedCallback(){
        console.log('Parent Rerender is called');
    }

    disconnectedCallback(){
        console.log('Parent Disconnected is called');
    }

    errorCallback(){
        console.log('Parent Error Callback');
    }
}