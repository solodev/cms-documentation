export default class Utils {
  constructor() {
    this.setDataBackgrounds();
  }
  setDataBackgrounds() {
    if ($('[data-background]')) {
      $('[data-background]').each(function() {
        var attr, that;
        that = $(this);
        attr = that.attr('data-background');
        that.css('background-image', 'url(' + attr + ')');
      });
    }
  }
}