import { LightningElement } from 'lwc';

export default class Parent extends LightningElement {


    constructor(){
        super()
        console.log('Constructor called')
    }

    connectedCallback(){
        console.log('Connected callback called')

    }

    renderedCallback(){
        console.log('rendered callback called')

    }

    disconnectedCallback(){
        console.log('disconnected called')

    }

    errorCallback(){

    }


}