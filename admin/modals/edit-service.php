<div class="modal fade" id="editServiceModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Service</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="#" method="POST" enctype="multipart/form-data" class="form-container">
        <div class="modal-body">
          <div class="row">
            <div class="col-lg-12">
              <img class="img rounded img-fluid" src="https://images.pexels.com/photos/736842/pexels-photo-736842.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt="">
            </div>
            <div class="col-lg-12">
              <div class="form-control">
                <input class="form-control" type="file" name="file" id="edit_file">
              </div>
            </div>
          </div>
          <div class="row">

            <div class="col-lg-12">
                <div class="form-group">
                  <label for="">Name</label>
                  <input type="text" class="form-control" name="name" id="edit_service_name" autocomplete="off">
                </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                  <label for="">Description</label>
                  <textarea class="form-control" name="description" id="edit_service_description" cols="10" rows="10"></textarea>
                </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary" name="editCategory">Save</button>
        </div>
      </form>
    </div>
  </div>
</div>
