var builder_ids = [];

function remove_fields(link) {
  // $(link).previous("input[type=hidden]").value = "1";
  // $(link).up(".fields").hide();
  $(link)[0].previousSibling.value = "1"
  $(link).parent('.fields').hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g");
  content = content.replace(regexp, new_id);

  var regexp = new RegExp("\\["+ association+"\\]", "g");
  content = content.replace(regexp, "");

  var regexp = new RegExp("\\[contact_people\\]", "g");
  content = content.replace(regexp, "[contact_people_attributes][0]");

  var regexp = new RegExp("\\[companies_attributes\\]\\[_destroy\\]", "g");
  content = content.replace(regexp, "[companies_attributes]["+new_id+"][_destroy]");

  $(link).before(content);
}

