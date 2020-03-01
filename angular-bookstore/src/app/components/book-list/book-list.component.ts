import { Component, OnInit } from '@angular/core';
import { Book } from '../../common/book';
import { BookService } from '../../services/book.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-book-list',
  templateUrl: './book-grid.component.html',
  styleUrls: ['./book-list.component.css']
})
export class BookListComponent implements OnInit {

  books: Book[];
  currentCategoryId: number;

  constructor(private _bookService: BookService,
              private _activatedRoute: ActivatedRoute) { }

  ngOnInit() {
    this._activatedRoute.paramMap.subscribe(()=>{
      this.listBooks();
    })
  }

  listBooks(){
    const hasCategoryId: boolean = this._activatedRoute.snapshot.paramMap.has('id');
    
    if (hasCategoryId) {
      this.currentCategoryId = +this._activatedRoute.snapshot.paramMap.get('id');
    }else {
      this.currentCategoryId = 1;
    }

    this._bookService.getBooks(this.currentCategoryId).subscribe(
      data => this.books = data
    )
  }

}
