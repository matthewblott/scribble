import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static lastScrollTop = 0
  static page = 1

  scroll(e) {
    let st = document.documentElement.scrollTop;

    if (st > this.lastScrollTop) {
      // downscroll code
    } else if (st < this.lastScrollTop) {
      // upscroll code
    }

    this.lastScrollTop = st <= 0 ? 0 : st; // For Mobile or negative scrolling

    // page++;
    // $.ajax({
    //   url: '/records',
    //   type: 'GET',
    //   data: { page: page },
    //   dataType: 'script',
    //   success: function() {
    //     isLoading = false;
    //   }
    // });

    console.log('scroll was called')
  }

  connect() {
    this.lastScrollTop = 0;
    this.page = 1;

    document.addEventListener('scroll', this.scroll);

  }

  disconnect() {
    document.removeEventListener('scroll', this.scroll)
  }

}

