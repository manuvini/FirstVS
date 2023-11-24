import { LightningElement, wire } from 'lwc';
import { publish, MessageContext } from 'lightning/messageService';
import SAMPLE_MESSAGE_CHANNEL from '@salesforce/messageChannel/contactMessageChannel__c';

export default class sendMessageLWC extends LightningElement {
    @wire(MessageContext)
    abc;

    publishMessage() {
        const message = {
            recordId: '12345',
            message: 'Hello from Publisher!'
        };

        publish(this.abc, SAMPLE_MESSAGE_CHANNEL, message);
    }
}