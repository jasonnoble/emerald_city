when HTTP_REQUEST {
  set cms_pool "cms.qa.rentalhouses.com"
  set req_uri [string tolower [HTTP::uri]]
	   
  if { $req_uri starts_with "/moving-center" or $req_uri starts_with "/credit-center" or $req_uri starts_with "/wp-admin" or $req_uri starts_with "/wp-login.php" or $req_uri starts_with "/wp-content"} {
    use pool $cms_pool
  }
}