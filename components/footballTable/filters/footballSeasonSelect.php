<!-- Season Select -->
<select class="selectpicker" data-live-search="true" title="Seasons" id="selectYear">
  <?php
    for ($w = 2019; $w >= 1980; $w--){
      echo "<option>" . $w . "</option>";
    }
  ?>
</select>
<button class="btn" id="seasonClear"><i class="fas fa-times-circle"></i></button>