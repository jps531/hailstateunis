/**

 * Copyright 2016 by Casey A. Ydenberg (www.caseyy.org)

 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

 * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

 * NOTE: -Paul Sullivan- 08-31-20: Code is heavily modified, but I'm leaving the copyright notice in as there are still some elements remaining.
 */

 (function($) {
   $.fn.deferImageLoading = function(callback) {
    var group = this;
    var count = this.length;
     return this.each(function() {
       var $img = $(this);
       $(document).ready(function() {
        var downloadingImage = new Image();
        downloadingImage.onload = function(){
          $img.attr('src', this.src);
          count--;
          if (!count && $.isFunction(callback)) {
            callback.call(group);
          }
        };
        downloadingImage.src = $img.data('src');
       });
     });
   };
 }(jQuery));
