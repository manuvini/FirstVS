import { LightningElement } from 'lwc';

export default class ParentAccSearch extends LightningElement {
    searchDetail  = []

    handleAccount (event){
        alert('Called from teh parent')
        console.log(event.detail)
        this.searchDetail = []

        try{
            event.detail.forEach(ele => {
                var accData = {
                    id: ele.Id,
                    name: ele.Name
                }
                this.searchDetail.push(accData)
            });
    
            
        }catch(e){
            console.log(e)
        }
        console.log(this.searchDetail);

        
    }
}