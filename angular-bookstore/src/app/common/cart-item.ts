import { Book } from './book';

export class CartItem {
    id: string;
    name: string;
    imageUrl: string;
    unitPrice: number;
    quantity: number;

    constructor(book: Book){
        this.id = book.id;
        this.name = book.name;
        this.imageUrl = book.imageUrl;
        this.unitPrice = book.unitPrice;
        this.quantity = 1
    }
}
