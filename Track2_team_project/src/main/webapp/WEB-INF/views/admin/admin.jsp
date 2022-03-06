<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="admin_header.jsp" %>
      <div class="body flex-grow-1 px-3">
        <div class="container-lg">
          <div class="row">
            <div class="col-sm-6 col-lg-6">
              <div class="card mb-4 text-white bg-primary">
                <div class="card-body pb-0 d-flex justify-content-between align-items-start">
                  <div>
                    <div class="fs-4 fw-semibold">${countUser} <span class="fs-6 fw-normal">
                        	人</span></div>
                    <div>Users</div>
                  </div>
                </div>
                <div class="c-chart-wrapper mt-3 mx-3" style="height:70px;">
                  <canvas class="chart" id="card-chart1" height="70"></canvas>
                </div>
              </div>
            </div>
            <!-- /.col-->
            <div class="col-sm-6 col-lg-6">
              <div class="card mb-4 text-white bg-info">
                <div class="card-body pb-0 d-flex justify-content-between align-items-start">
                  <div>
                    <div class="fs-4 fw-semibold">${countMoney} <span class="fs-6 fw-normal"> ¥
                        </span></div>
                    <div>Income</div>
                  </div>
                </div>
                <div class="c-chart-wrapper mt-3 mx-3" style="height:70px;">
                  <canvas class="chart" id="card-chart2" height="70"></canvas>
                </div>
              </div>
            </div>
            <!-- /.col-->
            
            <!-- /.col-->
            
            <!-- /.col-->
          </div>
          <!-- /.row-->
          <div class="card mb-4">
            <div class="card-body">
              <div class="d-flex justify-content-between">
                <div>
                  <h4 class="card-title mb-0">アルバムとトラックの購買比率</h4>
                  <div class="small text-medium-emphasis">All Time</div>
                </div>
              </div>
              <div class="c-chart-wrapper" style="max-height:800px;margin-top:40px">
                <canvas class="chart" id="main-chart" height="500" width="500" style="margin:0 auto;"></canvas>
              </div>
            </div>
 <!--            <div class="card-footer">
              <div class="row row-cols-1 row-cols-md-5 text-center">
                <div class="col mb-sm-2 mb-0">
                  <div class="text-medium-emphasis">Visits</div>
                  <div class="fw-semibold">29.703 Users (40%)</div>
                  <div class="progress progress-thin mt-2">
                    <div class="progress-bar bg-success" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
                <div class="col mb-sm-2 mb-0">
                  <div class="text-medium-emphasis">Unique</div>
                  <div class="fw-semibold">24.093 Users (20%)</div>
                  <div class="progress progress-thin mt-2">
                    <div class="progress-bar bg-info" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
                <div class="col mb-sm-2 mb-0">
                  <div class="text-medium-emphasis">Pageviews</div>
                  <div class="fw-semibold">78.706 Views (60%)</div>
                  <div class="progress progress-thin mt-2">
                    <div class="progress-bar bg-warning" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
                <div class="col mb-sm-2 mb-0">
                  <div class="text-medium-emphasis">New Users</div>
                  <div class="fw-semibold">22.123 Users (80%)</div>
                  <div class="progress progress-thin mt-2">
                    <div class="progress-bar bg-danger" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
                <div class="col mb-sm-2 mb-0">
                  <div class="text-medium-emphasis">Bounce Rate</div>
                  <div class="fw-semibold">40.15%</div>
                  <div class="progress progress-thin mt-2">
                    <div class="progress-bar" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
            </div> -->
          </div>
          <div class="card mb-4">
            <div class="card-body">
              <div class="d-flex justify-content-between">
                <div>
                  <h4 class="card-title mb-0">ジャンル別トラック購入比率</h4>
                  <div class="small text-medium-emphasis">All Time</div>
                </div>
              </div>
              <div class="c-chart-wrapper" style="max-height:800px;margin-top:40px">
                <canvas class="chart" id="subsub-chart" height="500" width="500" style="margin:0 auto;"></canvas>
              </div>
            </div>
          </div>
          <!-- /.card.mb-4-->
          <!-- /.row-->
          <!-- /.row-->
        </div>
      </div>
      <%@include file="admin_footer.jsp"%>
       <!-- Plugins and scripts required by this view-->
    <script src="/resources/js/admin/chart.min.js"></script>
    <script src="/resources/js/admin/coreui-chartjs.js"></script>
    <script src="/resources/js/admin/coreui-utils.js"></script>
    <script src="/resources/js/admin/main.js"></script>
    <script> 
    </script>